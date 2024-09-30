terraform {
  required_providers {
    akamai = {
      source  = "akamai/akamai"
      version = "~> 6.4"
    }
  }
  required_version = ">= 1.9.6"
}

provider "akamai" {
  edgerc         = var.edgerc_path
  config_section = var.config_section
}
