terraform {
  required_providers {
    akamai = {
      source  = "akamai/akamai"
      version = "~> 5.6.0"
    }
  }
}


provider "akamai" {
  edgerc         = var.edgerc
  config_section = var.section
}
