terraform {
  required_providers {
    akamai = {
      source  = "akamai/akamai"
      version = ">= 7.0.0"
    }
  }
  required_version = ">= 1.0"
}

provider "akamai" {
  edgerc         = var.edgerc_path
  config_section = var.config_section
}