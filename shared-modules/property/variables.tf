variable "notes" {
  type        = string
  description = "Execution notes, used to update certain elements"
}

variable "contract_id" {
  type        = string
  description = "Contract ID for property/config creation"
}

variable "group_id" {
  type        = string
  description = "Group ID for property/config creation"
}

variable "email" {
  type        = string
  description = "Email address used for activations"
}

variable "hostname" {
  type        = string
  description = "Hostname to include in configs/properties"
}

variable "enhanced_tls" {
  type        = bool
  description = "Boolean to switch between Enhanced and Standard TLS modes"
}

variable "ip_behavior" {
  type        = string
  description = "IP behaviour for edge hostnames. Can be one of: IPV4, IPV6_COMPLIANCE"
  default     = "IPV6_COMPLIANCE"
}

variable "default_origin" {
  type        = string
  description = "Default origin server for all properties"
}

variable "product_id" {
  type        = string
  description = "Property Manager product"
  default     = "Fresca"
}

variable "rule_format" {
  type        = string
  description = "Property rule format"
  default     = "v2025-01-13"
}

variable "sure_route_test_object" {
  type        = string
  description = "Test object path for SureRoute"
  default     = "/akamai/testobject.html"
}

variable "td_region" {
  type        = string
  description = "Region (map) for Tiered Distribution behaviour. Only applies if network is Standard TLS. Options are: CH2, CHAPAC, CHEU2, CHEUS2, CHWUS2, CHCUS2, CHAUS"
  default     = "CH2"
}

variable "activate_to_production" {
  type    = bool
  default = false
}

variable "activate_to_staging" {
  type    = bool
  default = false
}

variable "certificate_id" {
  type        = string
  description = "CPS ID, derived from Certificate module"
}

variable "include_ivm_images" {
  type        = bool
  description = "Boolean to control inclusion of Image Manager (Images) behaviour"
  default     = false
}

variable "ivm_images_policyset" {
  type        = string
  description = "IVM (Images) policy set ID from IVM module. If include_ivm_images is true then this is required."
  default     = ""
}