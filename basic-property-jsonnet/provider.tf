terraform {
  required_providers {
    akamai = {
      source  = "akamai/akamai"
      version = ">= 7.0.0"
    }
  }
  required_version = ">= 1.8"
}

provider "akamai" {
  edgerc         = var.edgerc_path
  config_section = var.config_section
}

provider "akamai" {
  config {
    access_token  = var.akamai_access_token
    host          = var.akamai_host
    client_token  = var.akamai_client_token
    client_secret = var.akamai_client_secret
  }
}