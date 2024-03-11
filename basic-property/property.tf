terraform {
  required_providers {
    akamai = {
      source  = "akamai/akamai"
      version = ">= 5.6.0"
    }
    jsonnet = {
      source = "alxrem/jsonnet"
    }
  }
  required_version = ">= 0.13"
}

provider "akamai" {
  edgerc         = var.edgerc_path
  config_section = var.config_section
}

# provider "akamai" {
#   config {
#     access_token = var.akamai_access_token
#     host = var.akamai_host
#     client_token = var.akamai_client_token
#     client_secret = var.akamai_client_secret
#     account_key = var.akamai_account_key
#   }
# }


locals {
  activation_version = (var.update_only == true) ? (akamai_property.property.latest_version - 1) : (akamai_property.property.latest_version)
}

data "akamai_group" "group" {
  group_name  = var.group_name
  contract_id = var.contract_id
}

data "akamai_property_rules_template" "rules" {
  template_file = abspath("${path.module}/property-snippets/main.json")
}

data "jsonnet_file" "rules" {
  # ext_code = {
  #   origin1                       = jsonencode(var.origin1)
  #   cpcode1                       = parseint(replace(akamai_cp_code.cp_code.id, "cpc_", ""), 10)
  #   siteshield_map                = jsonencode(var.siteshield_map)
  #   sureroute_map                 = jsonencode(var.sureroute_map)
  #   failover_netstorage_group     = jsonencode(var.failover_netstorage_group)
  #   failover_netstorage_uploaddir = var.failover_netstorage_uploaddir
  #   failover_netstorage_path      = jsonencode(var.failover_netstorage_path)
  #   failover_cpcode               = var.failover_netstorage_cpcode
  #   hostnames                     = jsonencode(var.hostnames)
  # }

  source = "${path.module}/jsonnet/rules.jsonnet"
}

resource "akamai_edge_hostname" "ehn" {
  product_id    = "prd_Fresca"
  contract_id   = data.akamai_contract.contract.id
  group_id      = data.akamai_group.group.id
  ip_behavior   = "IPV4"
  edge_hostname = "${var.hostname}.edgesuite.net"
}

resource "akamai_property" "property" {
  name        = var.property_name
  contract_id = var.contract_id
  group_id    = data.akamai_group.group.id
  product_id  = var.product_id
  rule_format = var.rule_format
  hostnames {
    cname_from             = var.hostname
    cname_to               = akamai_edge_hostname.ehn.edge_hostname
    cert_provisioning_type = "CPS_MANAGED"
  }
  rules = data.akamai_property_rules_template.rules.json
  # rules = data.jsonnet_file.rules.rendered
}

resource "akamai_property_activation" "activate" {
  property_id                    = akamai_property.property.id
  contact                        = ["mail@akamai.com"]
  version                        = local.activation_version
  network                        = upper(var.env)
  auto_acknowledge_rule_warnings = true
}
