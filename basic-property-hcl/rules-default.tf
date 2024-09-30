data "akamai_property_rules_builder" "property_rule_default" {
  rules_v2024_08_13 {
    name      = "default"
    is_secure = false
    comments  = "The Default Rule template contains all the necessary and recommended behaviors. Rules are evaluated from top to bottom and the last matching rule wins."
    behavior {
      origin {
        cache_key_hostname            = "REQUEST_HOST_HEADER"
        compress                      = true
        enable_true_client_ip         = true
        forward_host_header           = "REQUEST_HOST_HEADER"
        hostname                      = var.default_origin
        http_port                     = 80
        https_port                    = 443
        ip_version                    = "IPV4"
        origin_certificate            = ""
        origin_sni                    = true
        origin_type                   = "CUSTOMER"
        ports                         = ""
        true_client_ip_client_setting = false
        true_client_ip_header         = "True-Client-IP"
        verification_mode             = "PLATFORM_SETTINGS"
        min_tls_version               = "DYNAMIC"
      }
    }
    behavior {
      http3 {
        enable = true
      }
    }
    children = [
      data.akamai_property_rules_builder.property_rule_augment_insights.json,
      data.akamai_property_rules_builder.property_rule_accelerate_delivery.json,
      data.akamai_property_rules_builder.property_rule_offload_origin.json,
      data.akamai_property_rules_builder.property_rule_strengthen_security.json,
      data.akamai_property_rules_builder.property_rule_increase_availability.json,
      data.akamai_property_rules_builder.property_rule_minimize_payload.json
    ]
  }
}
