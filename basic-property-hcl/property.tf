terraform {
  required_providers {
    akamai = {
      source  = "akamai/akamai"
      version = ">= 2.0.0"
    }
  }
  required_version = ">= 0.13"
}

provider "akamai" {
  edgerc         = var.edgerc_path
  config_section = var.config_section
}

data "akamai_group" "group" {
  group_name  = "group1"
  contract_id = "ctr_1-2ABC11"
}

data "akamai_contract" "contract" {
  group_name = data.akamai_group.group.group_name
}

resource "akamai_edge_hostname" "ehn" {
  product_id    = "prd_Fresca"
  contract_id   = data.akamai_contract.contract.id
  group_id      = data.akamai_group.group.id
  ip_behavior   = "IPV4"
  edge_hostname = "www.example.com.edgesuite.net"
}

resource "akamai_property" "property" {
  name        = "property"
  contract_id = data.akamai_contract.contract.id
  group_id    = data.akamai_group.group.id
  product_id  = var.product_id
  rule_format = var.rule_format
  hostnames {
    cname_from             = "www.example.com"
    cname_to               = akamai_edge_hostname.ehn.edge_hostname
    cert_provisioning_type = "CPS_MANAGED"
  }
  hostnames {
    cname_from             = "api.example.com"
    cname_to               = akamai_edge_hostname.ehn.edge_hostname
    cert_provisioning_type = "CPS_MANAGED"
  }
  rules = data.akamai_property_rules_builder.property_rule_default.json
}
