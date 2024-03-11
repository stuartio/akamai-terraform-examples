locals {
  sanitized_project_name = replace(replace(var.project_name, "-", "_"), " ", "_")
}

module "certificate" {
  source       = "../../../shared-modules/certificate"
  contract_id  = var.contract_id
  group_id     = var.group_id
  hostname     = var.hostname
  enhanced_tls = var.enhanced_tls
}

module "network-lists" {
  source                   = "../../../shared-modules/network-lists"
  contract_id              = var.contract_id
  group_id                 = var.group_id
  prefix                   = local.sanitized_project_name
  ip_block_list            = var.ip_block_list
  ip_block_list_exceptions = var.ip_block_list_exceptions
  geo_block_list           = var.geo_block_list
  security_bypass_list     = var.security_bypass_list
  rate_bypass_list         = var.rate_bypass_list
  pragma_exceptions        = var.pragma_exceptions
  email                    = var.email
}

module "property" {
  source                 = "../../../shared-modules/property"
  notes                  = var.notes
  contract_id            = var.contract_id
  group_id               = var.group_id
  product_id             = var.product_id
  hostname               = var.hostname
  rule_format            = var.rule_format
  email                  = var.email
  enhanced_tls           = var.enhanced_tls
  ip_behavior            = var.ip_behavior
  default_origin         = var.default_origin
  certificate_id         = module.certificate.certificate_id
  sure_route_test_object = var.sure_route_test_object
  td_region              = var.td_region
  include_ivm_images     = false
  include_ivm_videos     = false
  include_cloudlets      = false
  depends_on = [
    module.certificate,
  ]
}

module "aap" {
  source                      = "../../../shared-modules/aapasm"
  contract_id                 = var.contract_id
  group_id                    = var.group_id
  hostname                    = var.hostname
  config_name                 = local.sanitized_project_name
  config_description          = var.security_config_description
  notes                       = var.notes
  email                       = var.email
  ip_block_list_id            = module.network-lists.ip_block_list_id
  ip_block_list_exceptions_id = module.network-lists.ip_block_list_exceptions_id
  geo_block_list_id           = module.network-lists.geo_block_list_id
  security_bypass_list_id     = module.network-lists.security_bypass_list_id
  rate_bypass_list_id         = module.network-lists.rate_bypass_list_id
  pragma_exceptions_id        = module.network-lists.pragma_exceptions_id
  depends_on = [
    module.network-lists,
    module.property
  ]
}
