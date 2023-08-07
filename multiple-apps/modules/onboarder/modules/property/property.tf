locals {
  version_notes            = "Terraform update"
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
  name        = "${var.property_name}-ivm-pristine"
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
  rules       = replace(data.akamai_property_rules_builder.property_rule_default.json, "\"rules\"", "\"comments\": \"${local.version_notes}\", \"rules\"")
  depends_on = [
    akamai_edge_hostname.edge_hostname
  ]
}

# data "akamai_property_rules_template" "rules" {
#     template_file = abspath("${path.module}/property-snippets/main.json")
#     variables {
#         name = "default_origin"
#         value = var.default_origin
#         type = "string"
#     }
#     variables {
#         name = "default_cpcode"
#         value = parseint(replace(akamai_cp_code.default.id, "cpc_",""), 10)
#         type = "number"
#     }
#     variables {
#         name = "cpcode_ivm_images_pristine"
#         value = parseint(replace(akamai_cp_code.ivm_images_pristine.id, "cpc_",""), 10)
#         type = "number"
#     }
#     variables {
#         name = "cpcode_ivm_images_derivative"
#         value = parseint(replace(akamai_cp_code.ivm_images_derivative.id, "cpc_",""), 10)
#         type = "number"
#     }
#     variables {
#         name = "cpcode_ivm_videos_pristine"
#         value = parseint(replace(akamai_cp_code.ivm_videos_pristine.id, "cpc_",""), 10)
#         type = "number"
#     }
#     variables {
#         name = "cpcode_ivm_videos_derivative"
#         value = parseint(replace(akamai_cp_code.ivm_videos_derivative.id, "cpc_",""), 10)
#         type = "number"
#     }
#     variables {
#         name = "ivm_policyset_images"
#         value = var.ivm_policyset_images
#         type = "string"
#     }
#     variables {
#         name = "ivm_policyset_videos"
#         value = var.ivm_policyset_videos
#         type = "string"
#     }
#     variables {
#         name = "sure_route_test_object"
#         value = var.sure_route_test_object
#         type = "string"
#     }
#     variables {
#         name = "td_region"
#         value = var.td_region
#         type = "string"
#     }
# }

resource "akamai_property_activation" "activate_staging" {
  property_id = akamai_property.property.id
  contact     = [var.email]
  version     = akamai_property.property.latest_version
  network     = "STAGING"
  depends_on = [
    akamai_property.property
  ]
}

# resource "akamai_property_activation" "activate_production" {
#     property_id = akamai_property.property.id
#     contact  = [var.email]
#     version  = akamai_property.property.latest_version
#     network  = "PRODUCTION"
#     depends_on = [
#         akamai_property.property
#     ]
# }
