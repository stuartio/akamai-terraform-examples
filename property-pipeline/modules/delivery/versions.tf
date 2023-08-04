terraform {
  required_providers {
    akamai = {
      source = "akamai/akamai"
    }
    jsonnet = {
      source =  "alxrem/jsonnet"
    }
  }
  required_version = ">= 1.0.0"
}

provider "akamai" {
    edgerc = "~/.edgerc"
    config_section = "terraform-ps"
}