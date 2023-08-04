
variable "activation_note" {
    type = string
}

variable "contract_id" {
    type = string
    default = "1-1NC95D"
}

variable "email" {
    type = string
}
variable "group_name" {
    type = string
}

variable "hostnames" {
    type = list
}

variable "property_name" {
    type = string
}

variable "product_id" {
    type = string
    default = "prd_Fresca"
}

variable "rule_format" {
    type = string
    default = "v2021-07-30"
}

variable "origin1" {
    type = string
}

variable "failover_netstorage_group" {
    type = string
    default = "smacleod.download.akamai.com"
}

variable "failover_netstorage_uploaddir" {
    type = number
    default = 816551
}

variable "failover_netstorage_path" {
    type = string
    default = "/errors/5xx.html"
}

variable "failover_netstorage_cpcode" {
    type = number
    default = 813436
}

variable "siteshield_map" {
    type = string
    default = "s144.akamai.net"
}

variable "sureroute_map" {
    type = string
    default = "Akamai-Professional-Services-a12739.akasrg.akamai.com"
}

variable "activate_to_production" {
    type = bool
    default = false
}