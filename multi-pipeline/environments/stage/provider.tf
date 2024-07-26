terraform {
  required_providers {
    akamai = {
      source  = "akamai/akamai"
      version = "~> 6.1.0"
    }
  }
  backend "s3" {
    bucket                      = "smacleod-general"
    key                         = "multi-pipeline/terraform.tfstate"
    region                      = "us-east-1"
    endpoints                   = { s3 = "https://us-east-1.linodeobjects.com" }
    skip_credentials_validation = true
    skip_requesting_account_id  = true
  }
}


provider "akamai" {
  edgerc         = var.edgerc
  config_section = var.section
}
