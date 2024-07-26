terraform {
  required_providers {
    akamai = {
      source  = "akamai/akamai"
      version = "~> 6.1.0"
    }
  }
}


provider "akamai" {
  edgerc         = var.edgerc
  config_section = var.section
}
