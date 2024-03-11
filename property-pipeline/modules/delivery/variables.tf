
variable "activation_note" {
  type = string
}

variable "contract_id" {
  type = string
}

variable "email" {
  type = string
}
variable "group_name" {
  type = string
}

variable "hostnames" {
  type = list(any)
}

variable "property_name" {
  type = string
}

variable "product_id" {
  type    = string
  default = "prd_Fresca"
}

variable "rule_format" {
  type    = string
  default = "v2024-02-12"
}

variable "origin1" {
  type = string
}

variable "failover_netstorage_group" {
  type    = string
  default = "example.download.akamai.com"
}

variable "failover_netstorage_uploaddir" {
  type    = number
  default = 123456
}

variable "failover_netstorage_path" {
  type    = string
  default = "/errors/5xx.html"
}

variable "failover_netstorage_cpcode" {
  type    = number
  default = 123456
}

variable "siteshield_map" {
  type    = string
  default = "s111.akamai.net"
}

variable "sureroute_map" {
  type    = string
  default = "ab12345.akasrg.akamai.com"
}

variable "activate_to_production" {
  type    = bool
  default = false
}

variable "activate_to_staging" {
  type    = bool
  default = true
}
