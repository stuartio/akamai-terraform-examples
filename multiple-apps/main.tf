module "onboarder" {
  source                   = "./modules/onboarder"
  notes                    = var.notes
  contract_id              = var.contract_id
  group_id                 = var.group_id
  product_id               = var.product_id
  hostname                 = var.hostname
  rule_format              = var.rule_format
  sure_route_test_object   = var.sure_route_test_object
  td_region                = var.td_region
  enhanced_tls             = var.enhanced_tls
  project_name             = var.project_name
  email                    = var.email
  default_origin           = var.default_origin
  ip_block_list            = var.ip_block_list
  ip_block_list_exceptions = var.ip_block_list_exceptions
  geo_block_list           = var.geo_block_list
  security_bypass_list     = var.security_bypass_list
  rate_bypass_list         = var.rate_bypass_list
  pragma_exceptions        = var.pragma_exceptions
  section                  = var.section
  include_cloudlets        = var.include_cloudlets
  include_ivm_images       = var.include_ivm_images
  include_ivm_videos       = var.include_ivm_videos
  include_property         = var.include_property
  include_security         = var.include_security
}