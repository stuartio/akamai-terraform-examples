terraform {
  required_providers {
    akamai = {
      source = "akamai/akamai"
    }
  }
}

provider "akamai" {
  edgerc         = "~/.edgerc"
  config_section = var.section
}
