terraform {
  required_providers {
    akamai = {
      source  = "akamai/akamai"
      version = ">= 3.1.0"
    }
  }
  required_version = ">= 0.13"
}

provider "akamai" {
  edgerc         = var.edgerc_path
  config_section = var.config_section
}

resource "akamai_cps_dv_enrollment" "enrollment" {
  common_name                           = "www.example.com"
  allow_duplicate_common_name           = false
  sans                                  = ["www.example.com","api.example.com"]
  secure_network                        = "standard-tls"
  sni_only                              = true
  acknowledge_pre_verification_warnings = false
  admin_contact {
    first_name       = "Bob"
    last_name        = "Loblaw"
    organization     = ""
    email            = "bob@example.com"
    phone            = "+1 800 800800"
    address_line_one = ""
    city             = ""
    region           = ""
    postal_code      = ""
    country_code     = ""
  }
  certificate_chain_type = "default"
  csr {
    country_code        = "GB"
    city                = "London"
    organization        = "Example"
    organizational_unit = ""
    state               = "London"
  }
  network_configuration {
    disallowed_tls_versions = ["TLSv1", "TLSv1_1", ]
    geography               = "core"
    must_have_ciphers       = "ak-akamai-2020q1"
    ocsp_stapling           = "on"
    preferred_ciphers       = "ak-akamai-2020q1"
    clone_dns_names         = false
  }
  signature_algorithm = "SHA-256"
  tech_contact {
    first_name       = "Bob"
    last_name        = "Loblaw"
    organization     = ""
    email            = "bob@example.com"
    phone            = "+1 800 800800"
    address_line_one = ""
    city             = ""
    region           = ""
    postal_code      = ""
    country_code     = ""
  }
  organization {
    name             = "Example"
    phone            = "+44800800800"
    address_line_one = "7 Air St"
    city             = "London"
    region           = "London"
    postal_code      = "W1B5AD"
    country_code     = "GB"
  }
  contract_id = "1-2AB12CD"
}
