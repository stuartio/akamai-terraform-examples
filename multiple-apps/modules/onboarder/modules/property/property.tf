locals{
    version_notes = "Terraform update"
    ehn_domain = (var.enhanced_tls == true) ? "edgekey.net" : "edgesuite.net"
    ehn_certificate = (var.enhanced_tls == true) ? var.certificate_id : null
}

resource "akamai_cp_code" "default" {
    for_each = toset( var.hostnames )
    name = each.key
    contract_id = var.contract_id
    group_id = var.group_id
    product_id = var.product_id
}

resource "akamai_cp_code" "ivm_images_pristine" {
    for_each = toset( var.hostnames )
    name = "${each.key}-ivm-pristine"
    contract_id = var.contract_id
    group_id = var.group_id
    product_id = var.product_id
}

resource "akamai_cp_code" "ivm_images_derivative" {
    for_each = toset( var.hostnames )
    name = "${each.key}-ivm-derivative"
    contract_id = var.contract_id
    group_id = var.group_id
    product_id = var.product_id
}

resource "akamai_cp_code" "ivm_videos_pristine" {
    for_each = toset( var.hostnames )
    name = "${each.key}-ivm-pristine"
    contract_id = var.contract_id
    group_id = var.group_id
    product_id = var.product_id
}

resource "akamai_cp_code" "ivm_videos_derivative" {
    for_each = toset( var.hostnames )
    name = "${each.key}-ivm-derivative"
    contract_id = var.contract_id
    group_id = var.group_id
    product_id = var.product_id
}

resource "akamai_edge_hostname" "edge_hostname" {
    for_each = toset( var.hostnames )
    product_id  = var.product_id
    contract_id = var.contract_id
    group_id    = var.group_id
    edge_hostname = "${each.key}.${local.ehn_domain}"
    certificate = local.ehn_certificate
    ip_behavior = var.ip_behavior
}

resource "akamai_property" "property" {
    for_each = toset( var.hostnames )

    name        = each.key
    product_id  = var.product_id
    contract_id = var.contract_id
    group_id    = var.group_id

    hostnames {
      cname_from = each.key
      cname_to = "${each.key}.${local.ehn_domain}"
      cert_provisioning_type = "CPS_MANAGED"
    }

    rule_format = var.rule_format
    rules       = replace(data.akamai_property_rules_template.rules[each.key].json, "\"rules\"", "\"comments\": \"${local.version_notes}\", \"rules\"")
    depends_on = [
        data.akamai_property_rules_template.rules,
        akamai_edge_hostname.edge_hostname
    ]
}

data "akamai_property_rules_template" "rules" {
    for_each = toset( var.hostnames )
    template_file = abspath("${path.module}/property-snippets/main.json")
    variables {
        name = "default_origin"
        value = var.default_origin
        type = "string"
    }
    variables {
        name = "default_cpcode"
        value = parseint(replace(akamai_cp_code.default[each.key].id, "cpc_",""), 10)
        type = "number"
    }
    variables {
        name = "cpcode_ivm_images_pristine"
        value = parseint(replace(akamai_cp_code.ivm_images_pristine[each.key].id, "cpc_",""), 10)
        type = "number"
    }
    variables {
        name = "cpcode_ivm_images_derivative"
        value = parseint(replace(akamai_cp_code.ivm_images_derivative[each.key].id, "cpc_",""), 10)
        type = "number"
    }
    variables {
        name = "cpcode_ivm_videos_pristine"
        value = parseint(replace(akamai_cp_code.ivm_videos_pristine[each.key].id, "cpc_",""), 10)
        type = "number"
    }
    variables {
        name = "cpcode_ivm_videos_derivative"
        value = parseint(replace(akamai_cp_code.ivm_videos_derivative[each.key].id, "cpc_",""), 10)
        type = "number"
    }
    variables {
        name = "ivm_policyset_images"
        value = var.ivm_policyset_images
        type = "string"
    }
    variables {
        name = "ivm_policyset_videos"
        value = var.ivm_policyset_videos
        type = "string"
    }
    variables {
        name = "sure_route_test_object"
        value = var.sure_route_test_object
        type = "string"
    }
    variables {
        name = "td_region"
        value = var.td_region
        type = "string"
    }
}

resource "akamai_property_activation" "activate_staging" {
    for_each = akamai_property.property
    property_id = each.value.id
    contact  = [var.email]
    version  = each.value.latest_version
    network  = "STAGING"
    depends_on = [
        akamai_property.property
    ]
}

# resource "akamai_property_activation" "activate_production" {
#     for_each = akamai_property.property
#     property_id = each.value.id
#     contact  = [var.email]
#     version  = each.value.latest_version
#     network  = "PRODUCTION"
#     depends_on = [
#         akamai_property.property
#     ]
# }

# resource "null_resource" "activate_production" {
#     for_each = akamai_property.property
#     triggers = {
#         version = akamai_property.property[each.key].latest_version
#     }

#     provisioner "local-exec" {
#         command = "akamai pm -a ${var.account_key} -s ${var.section} activate-version -p ${akamai_property.property[each.key].name} -n production -e ${var.email} -w"
#     }
# }