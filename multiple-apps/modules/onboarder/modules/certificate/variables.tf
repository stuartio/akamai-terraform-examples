variable "hostnames" {
    type = list
    description = "List of hostnames to be used"
}

variable "contract_id" {
    type = string
    description = "Contract ID for property/config creation"
}

variable "group_id" {
    type = string
    description = "Group ID for property/config creation"
}

variable "enhanced_tls" {
    type = bool
    default = false
}

variable "product_id" {
    type = string
    default = "Fresca"
}

variable "ip_behavior" {
    type = string
    default = "IPV6_COMPLIANCE"
}