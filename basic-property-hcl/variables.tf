variable "edgerc_path" {
  type    = string
  default = "~/.edgerc"
}

variable "config_section" {
  type    = string
  default = "terraform-ps"
}

variable "env" {
  type    = string
  default = "staging"
}

variable "product_id" {
  type    = string
  default = "Fresca"
}

variable "rule_format" {
  type    = string
  default = "latest"
}
