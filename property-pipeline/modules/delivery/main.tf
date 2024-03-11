locals {
  prod_activation_count    = (var.activate_to_production == true) ? 1 : 0
  staging_activation_count = (var.activate_to_staging == true) ? 1 : 0
  version_notes            = "Terraform update ${substr(timestamp(), 0, 10)}"
}

data "akamai_group" "group" {
  group_name  = var.group_name
  contract_id = var.contract_id
}

resource "akamai_cp_code" "cp_code" {
  name        = var.property_name
  contract_id = var.contract_id
  group_id    = data.akamai_group.group.id
  product_id  = var.product_id
}


resource "akamai_edge_hostname" "edge_host" {
  for_each = toset(var.hostnames)

  product_id    = var.product_id
  contract_id   = var.contract_id
  group_id      = data.akamai_group.group.id
  edge_hostname = "${each.key}.edgesuite.net"
  ip_behavior   = "IPV6_COMPLIANCE"
}

data "jsonnet_file" "rule_jsonnet" {
  ext_code = {
    origin1                       = jsonencode(var.origin1)
    cpcode1                       = parseint(replace(akamai_cp_code.cp_code.id, "cpc_", ""), 10)
    siteshield_map                = jsonencode(var.siteshield_map)
    sureroute_map                 = jsonencode(var.sureroute_map)
    failover_netstorage_group     = jsonencode(var.failover_netstorage_group)
    failover_netstorage_uploaddir = var.failover_netstorage_uploaddir
    failover_netstorage_path      = jsonencode(var.failover_netstorage_path)
    failover_cpcode               = var.failover_netstorage_cpcode
    hostnames                     = jsonencode(var.hostnames)
  }

  source = "${path.module}/jsonnet/rules.jsonnet"
}

resource "akamai_property" "property" {
  name        = var.property_name
  product_id  = var.product_id
  contract_id = var.contract_id
  group_id    = data.akamai_group.group.id

  dynamic "hostnames" {
    for_each = toset(var.hostnames)

    content {
      cname_from             = hostnames.value
      cname_to               = "${hostnames.value}.edgesuite.net"
      cert_provisioning_type = "CPS_MANAGED"
    }
  }

  rule_format = var.rule_format
  rules       = replace(data.jsonnet_file.rule_jsonnet.rendered, "\"rules\"", "\"comments\": \"${local.version_notes}\", \"rules\"")
  depends_on = [
    akamai_edge_hostname.edge_host
  ]
}

resource "akamai_property_activation" "activate_staging" {
  property_id = akamai_property.property.id
  contact     = [var.email]
  version     = akamai_property.property.latest_version
  network     = "STAGING"
  note        = var.activation_note
  count       = local.staging_activation_count
}

resource "akamai_property_activation" "activate_prod" {
  property_id = akamai_property.property.id
  contact     = [var.email]
  version     = akamai_property.property.latest_version
  network     = "PRODUCTION"
  note        = var.activation_note
  depends_on = [
    akamai_property_activation.activate_staging
  ]
  count = local.prod_activation_count
}

resource "local_file" "rules_json" {
  content  = data.jsonnet_file.rule_jsonnet.rendered
  filename = "rules.json"
}



data "akamai_property_rules_template" "rules" {
  template_file = abspath("${path.module}/property-snippets/main.json")
  variables {
    name  = "origin1"
    value = var.origin1
    type  = "string"
  }
  variables {
    name  = "cpcode1"
    value = parseint(replace(akamai_cp_code.cp_code.id, "cpc_", ""), 10)
    type  = "number"
  }
  variables {
    name  = "siteshield_map"
    value = var.siteshield_map
    type  = "string"
  }
  variables {
    name  = "sureroute_map"
    value = var.sureroute_map
    type  = "string"
  }
  variables {
    name  = "failover_netstorage_group"
    value = var.failover_netstorage_group
    type  = "string"
  }
  variables {
    name  = "failover_netstorage_uploaddir"
    value = var.failover_netstorage_uploaddir
    type  = "number"
  }
  variables {
    name  = "failover_netstorage_path"
    value = var.failover_netstorage_path
    type  = "string"
  }
  variables {
    name  = "failover_cpcode"
    value = var.failover_netstorage_cpcode
    type  = "number"
  }
}
