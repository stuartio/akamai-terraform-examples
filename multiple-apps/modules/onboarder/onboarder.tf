locals {
    sanitized_project_name = replace(replace(var.project_name,"-","_"), " ", "_")
}

module "certificate" {
    source = "./modules/certificate"
    contract_id = var.contract_id
    group_id = var.group_id
    hostnames = var.hostnames
    enhanced_tls = var.enhanced_tls
}

module "network-lists" {
    source = "./modules/network-lists"
    contract_id = var.contract_id
    group_id = var.group_id
    prefix = local.sanitized_project_name
    ip_block_list = var.ip_block_list
    ip_block_list_exceptions = var.ip_block_list_exceptions
    geo_block_list = var.geo_block_list
    security_bypass_list = var.security_bypass_list
    rate_bypass_list = var.rate_bypass_list
    pragma_exceptions = var.pragma_exceptions
    email = var.email
}

module "ivm" {
    source = "./modules/ivm"
    contract_id = var.contract_id
    region = var.ivm_region
    policy_set_name = local.sanitized_project_name
}

module "property" {
    source = "./modules/property"
    contract_id = var.contract_id
    group_id = var.group_id
    product_id = var.product_id
    hostnames = var.hostnames
    rule_format = var.rule_format
    email = var.email
    enhanced_tls = var.enhanced_tls
    ip_behavior = var.ip_behavior
    default_origin = var.default_origin
    certificate_id = module.certificate.certificate_id
    ivm_policyset_images = module.ivm.image_policyset_id
    ivm_policyset_videos = module.ivm.video_policyset_id
    account_key = var.account_key
    section = var.section
    sure_route_test_object = var.sure_route_test_object
    td_region = var.td_region
    depends_on = [
        module.certificate,
        module.ivm
    ]
}

module "security" {
    source = "./modules/security"
    contract_id = var.contract_id
    group_id = var.group_id
    hostnames = var.hostnames
    config_name = local.sanitized_project_name
    config_description = var.security_config_description
    email = var.email
    ip_block_list_id = module.network-lists.ip_block_list_id
    ip_block_list_exceptions_id = module.network-lists.ip_block_list_exceptions_id
    geo_block_list_id = module.network-lists.geo_block_list_id
    security_bypass_list_id = module.network-lists.security_bypass_list_id
    rate_bypass_list_id = module.network-lists.rate_bypass_list_id
    pragma_exceptions_id = module.network-lists.pragma_exceptions_id
    depends_on = [
        module.network-lists,
        module.property
    ]
}