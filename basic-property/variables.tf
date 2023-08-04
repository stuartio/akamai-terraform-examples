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

variable "update_only" {
  type    = bool
  default = false
}