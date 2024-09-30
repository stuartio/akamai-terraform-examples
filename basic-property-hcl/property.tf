resource "akamai_cp_code" "default" {
  name        = var.property_name
  contract_id = var.contract_id
  group_id    = var.group_id
  product_id  = var.product_id
}

resource "akamai_property" "property" {
  name        = var.property_name
  contract_id = var.contract_id
  group_id    = var.group_id
  product_id  = var.product_id
  rule_format = var.rule_format
  hostnames {
    cname_from             = var.hostname
    cname_to               = "${var.hostname}.edgesuite.net"
    cert_provisioning_type = "DEFAULT"
  }
  rules         = data.akamai_property_rules_builder.property_rule_default.json
  version_notes = "Configured by Terraform"
}

resource "akamai_property_activation" "activate" {
  property_id                    = akamai_property.property.id
  contact                        = [var.email]
  version                        = akamai_property.property.latest_version
  network                        = var.environment
  note                           = "Activated by Terraform"
  auto_acknowledge_rule_warnings = true
}
