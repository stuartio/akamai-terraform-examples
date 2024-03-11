locals {
  certificate_count      = var.include_certificate ? 1 : 0
  security_count         = var.include_security ? 1 : 0
  ivm_images_count       = var.include_ivm_images ? 1 : 0
  ivm_videos_count       = var.include_ivm_videos ? 1 : 0
  cloudlets_count        = var.include_cloudlets ? 1 : 0
  property_count         = var.include_property ? 1 : 0
  sanitized_project_name = replace(replace(var.project_name, "-", "_"), " ", "_")
}

module "certificate" {
  source       = "../../../shared-modules/certificate"
  contract_id  = var.contract_id
  group_id     = var.group_id
  hostname     = var.hostname
  enhanced_tls = var.enhanced_tls
  count        = local.certificate_count
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
  count                    = local.security_count
}

module "ivm_images" {
  source          = "../../../shared-modules/ivm-images"
  contract_id     = var.contract_id
  region          = var.ivm_region
  policy_set_name = local.sanitized_project_name
  count           = local.ivm_images_count
}

module "ivm_videos" {
  source          = "../../../shared-modules/ivm-videos"
  contract_id     = var.contract_id
  region          = var.ivm_region
  policy_set_name = local.sanitized_project_name
  count           = local.ivm_videos_count
}

module "cloudlets_config" {
  source   = "../../../shared-modules/cloudlets/config"
  group_id = var.group_id
  hostname = var.hostname
  count    = local.cloudlets_count
}

module "property" {
  source                      = "../../../shared-modules/property"
  notes                       = var.notes
  contract_id                 = var.contract_id
  group_id                    = var.group_id
  product_id                  = var.product_id
  hostname                    = var.hostname
  rule_format                 = var.rule_format
  email                       = var.email
  enhanced_tls                = var.enhanced_tls
  ip_behavior                 = var.ip_behavior
  default_origin              = var.default_origin
  certificate_id              = var.include_certificate ? module.certificate[0].certificate_id : null
  include_ivm_images          = var.include_ivm_images
  ivm_images_policyset        = var.include_ivm_images ? module.ivm_images[0].image_policyset_id : "DISABLED"
  include_ivm_videos          = var.include_ivm_videos
  ivm_videos_policyset        = var.include_ivm_videos ? module.ivm_videos[0].video_policyset_id : "DISABLED-v"
  include_cloudlets           = var.include_cloudlets
  edge_redirector_policy_id   = var.include_cloudlets ? module.cloudlets_config[0].edge_redirector_policy_id : 0
  edge_redirector_policy_name = var.include_cloudlets ? module.cloudlets_config[0].edge_redirector_policy_name : "DISABLED"
  sure_route_test_object      = var.sure_route_test_object
  td_region                   = var.td_region
  depends_on = [
    module.certificate,
    module.ivm_images,
    module.ivm_videos,
    module.cloudlets_config
  ]
  count = local.property_count
}

module "cloudlets_activation" {
  source                         = "../../../shared-modules/cloudlets/activation"
  edge_redirector_policy_id      = module.cloudlets_config[0].edge_redirector_policy_id
  edge_redirector_policy_version = module.cloudlets_config[0].edge_redirector_policy_version
  edge_redirector_properties     = [var.hostname]
  count                          = local.property_count
  depends_on                     = [module.property]
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
  ip_block_list_id            = module.network-lists[0].ip_block_list_id
  ip_block_list_exceptions_id = module.network-lists[0].ip_block_list_exceptions_id
  geo_block_list_id           = module.network-lists[0].geo_block_list_id
  security_bypass_list_id     = module.network-lists[0].security_bypass_list_id
  rate_bypass_list_id         = module.network-lists[0].rate_bypass_list_id
  pragma_exceptions_id        = module.network-lists[0].pragma_exceptions_id
  depends_on = [
    module.network-lists,
    module.property
  ]
  count = local.security_count
}
