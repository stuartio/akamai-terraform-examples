data "akamai_property_rules_template" "rules" {
  template_file = abspath("${path.module}/rules/main.json")
  variables {
    name  = "default_origin"
    value = var.default_origin
    type  = "string"
  }
}

resource "akamai_property" "property" {
  name        = var.property_name
  contract_id = var.contract_id
  group_id    = var.group_id
  product_id  = var.product_id
  hostnames {
    cname_from             = var.hostname
    cname_to               = "${var.hostname}.edgesuite.net"
    cert_provisioning_type = "DEFAULT"
  }
  rule_format = var.rule_format
  rules       = data.akamai_property_rules_template.rules.json
  version_notes = "Updated by terraform"
}

# NOTE: Be careful when removing this resource as you can disable traffic
resource "akamai_property_activation" "staging" {
  property_id                    = akamai_property.property.id
  contact                        = [var.email]
  version                        = var.activate_latest_on_staging ? akamai_property.property.latest_version : akamai_property.property.staging_version
  network                        = "STAGING"
  auto_acknowledge_rule_warnings = true
}

# NOTE: Be careful when removing this resource as you can disable traffic
resource "akamai_property_activation" "production" {
  property_id                    = akamai_property.property.id
  contact                        = [var.email]
  version                        = var.activate_latest_on_production ? akamai_property.property.latest_version : akamai_property.property.production_version
  network                        = "PRODUCTION"
  auto_acknowledge_rule_warnings = true
}
