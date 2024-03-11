variable "section" {
  type        = string
  description = "EdgeRC section, used in property activation hack"
  default     = "default"
}

variable "notes" {
  type        = string
  description = "Execution notes, used to update certain elements"
  default     = "Managed by Terraform"
}

variable "contract_id" {
  type        = string
  description = "Contract ID for property/config creation"
}

variable "group_id" {
  type        = string
  description = "Group ID for property/config creation"
}

variable "product_id" {
  type        = string
  description = "Property Manager product"
  default     = "Fresca"
}

variable "hostname" {
  type        = string
  description = "Hostname to include in configs/properties"
}

variable "rule_format" {
  type        = string
  description = "Property rule format"
  default     = "latest"
}

variable "sure_route_test_object" {
  type        = string
  description = "Test object path for SureRoute"
  default     = "/akamai/testobject.html"
}

variable "default_origin" {
  type        = string
  description = "Default origin server for all properties"
}

variable "td_region" {
  type        = string
  description = "Region (map) for Tiered Distribution behaviour. Only applies if network is Standard TLS. Options are: CH2, CHAPAC, CHEU2, CHEUS2, CHWUS2, CHCUS2, CHAUS"
  default     = "CH2"
}

variable "enhanced_tls" {
  type        = bool
  description = "Boolean to switch between Enhanced and Standard TLS modes"
  default     = false
}

variable "ip_behavior" {
  type        = string
  description = "IP behaviour for edge hostnames. Can be one of: IPV4, IPV6_COMPLIANCE"
  default     = "IPV6_COMPLIANCE"
}

variable "email" {
  type        = string
  description = "Email address used for activations"
}

variable "project_name" {
  type        = string
  description = "Name of the overall project. Used to name various resources. Do not include spaces"
}

variable "ivm_region" {
  type        = string
  description = "The geographic region for which the media using the IVM policy set is optimized: US, EMEA, ASIA, AUSTRALIA, JAPAN or CHINA"
  default     = "US"
}

variable "security_config_description" {
  type        = string
  description = "Description given to security config"
  default     = "Auto-created by Terraform"
}

variable "ip_block_list" {
  type        = list(any)
  description = "IP Block List IPs"
  default     = []
}

variable "ip_block_list_exceptions" {
  type        = list(any)
  description = "IP Block List Exceptions IPs"
  default     = []
}

variable "geo_block_list" {
  type        = list(any)
  description = "Geo Block List Geos"
  default     = []
}

variable "security_bypass_list" {
  type        = list(any)
  description = "Security Bypass List IPs"
  default     = []
}

variable "rate_bypass_list" {
  type        = list(any)
  description = "Rate Control Bypass List IPs"
  default     = []
}

variable "pragma_exceptions" {
  type        = list(any)
  description = "Pragma Removal Exceptions IPs"
  default     = []
}

variable "enable_siem" {
  type        = bool
  default     = true
  description = "On/Off option for SIEM feature"
}

variable "enable_client_rep" {
  type        = bool
  default     = true
  description = "On/Off option for Client Reputation feature"
}

variable "enable_slow_post" {
  type        = bool
  default     = true
  description = "On/Off option for Slow Post feature"
}
