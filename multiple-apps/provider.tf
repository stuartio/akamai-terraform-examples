terraform {
  required_providers {
    akamai = {
      source  = "akamai/akamai"
      version = "~> 5.1.0"
    }
  }
}


provider "akamai" {
  edgerc         = "~/.edgerc"
  config_section = var.section
}
