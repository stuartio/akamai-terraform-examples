locals {
  ehn_domain               = (var.enhanced_tls == true) ? "edgekey.net" : "edgesuite.net"
  ehn_certificate          = (var.enhanced_tls == true) ? var.certificate_id : null
  ivm_images_cpcodes_count = var.include_ivm_images ? 1 : 0
  ivm_videos_cpcodes_count = var.include_ivm_videos ? 1 : 0
}

resource "akamai_cp_code" "default" {
  name        = var.hostname
  contract_id = var.contract_id
  group_id    = var.group_id
  product_id  = var.product_id
}

resource "akamai_cp_code" "ivm_images_pristine" {
  name        = "${var.hostname}-ivm-pristine"
  contract_id = var.contract_id
  group_id    = var.group_id
  product_id  = var.product_id
  count       = local.ivm_images_cpcodes_count
}

resource "akamai_cp_code" "ivm_images_derivative" {
  name        = "${var.hostname}-ivm-derivative"
  contract_id = var.contract_id
  group_id    = var.group_id
  product_id  = var.product_id
  count       = local.ivm_images_cpcodes_count
}

resource "akamai_cp_code" "ivm_videos_pristine" {
  name        = "${var.hostname}-ivm-pristine"
  contract_id = var.contract_id
  group_id    = var.group_id
  product_id  = var.product_id
  count       = local.ivm_videos_cpcodes_count
}

resource "akamai_cp_code" "ivm_videos_derivative" {
  name        = "${var.hostname}-ivm-derivative"
  contract_id = var.contract_id
  group_id    = var.group_id
  product_id  = var.product_id
  count       = local.ivm_videos_cpcodes_count
}

resource "akamai_edge_hostname" "edge_hostname" {
  product_id    = var.product_id
  contract_id   = var.contract_id
  group_id      = var.group_id
  edge_hostname = "${var.hostname}.${local.ehn_domain}"
  certificate   = local.ehn_certificate
  ip_behavior   = var.ip_behavior
}

resource "akamai_property" "property" {
  name        = var.hostname
  product_id  = var.product_id
  contract_id = var.contract_id
  group_id    = var.group_id

  hostnames {
    cname_from             = var.hostname
    cname_to               = "${var.hostname}.${local.ehn_domain}"
    cert_provisioning_type = "CPS_MANAGED"
  }

  rule_format = var.rule_format
  rules       = replace(data.akamai_property_rules_builder.property_rule_default.json, "\"rules\"", "\"comments\": \"${var.notes}\", \"rules\"")
  depends_on = [
    akamai_edge_hostname.edge_hostname
  ]
}

resource "akamai_property_activation" "activate_staging" {
  property_id                    = akamai_property.property.id
  contact                        = [var.email]
  version                        = akamai_property.property.latest_version
  network                        = "STAGING"
  auto_acknowledge_rule_warnings = true
  note                           = var.notes
  lifecycle {
    ignore_changes = [
      note,
    ]
  }
}

resource "akamai_property_activation" "activate_production" {
  property_id                    = akamai_property.property.id
  contact                        = [var.email]
  version                        = akamai_property.property.latest_version
  network                        = "PRODUCTION"
  auto_acknowledge_rule_warnings = true
  note                           = var.notes
  compliance_record {
    noncompliance_reason_no_production_traffic {
    }
  }
  lifecycle {
    ignore_changes = [
      note,
    ]
  }
}
