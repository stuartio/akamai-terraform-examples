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

variable "group_name" {
  type        = string
  description = "Group name"
}
variable "contract_id" {
  type        = string
  description = "Contract ID"
}

variable "hostname" {
  type = string
}

variable "property_name" {
  type = string
}

variable "product_id" {
  type    = string
  default = "Fresca"
}

variable "rule_format" {
  type    = string
  default = "latest"
}

variable "akamai_access_token" {
  type = string
  description = "API credential access token"
}

variable "akamai_host" {
  type = string
  description = "API credential host"
}

variable "akamai_client_token" {
  type = string
  description = "API credential client token"
}

variable "akamai_client_secret" {
  type = string
  description = "API credential client secret"
}