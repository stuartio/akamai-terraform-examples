variable "edgerc_path" {
  type        = string
  default     = "~/.edgerc"
  description = "Path to .edgerc file. Defaults to ~/.edgerc"
}

variable "config_section" {
  type        = string
  default     = "default"
  description = "EdgeRC section. Change this to switch between accounts, assuming your section has an account_id member"
}

variable "contract_id" {
  type        = string
  description = "Contract ID"
}

variable "group_id" {
  type        = string
  description = "Group ID"
}

variable "property_name" {
  type        = string
  description = "Name for your property"
}

variable "hostname" {
  type        = string
  description = "hostname for your property"
}

variable "product_id" {
  type        = string
  default     = "Fresca"
  description = "Product ID. Defaults to Ion Standard"
}

variable "rule_format" {
  type        = string
  default     = "v2025-01-13"
  description = "Static rule format schema. This is required when using HCL rules and must match the data source format."
}

variable "default_origin" {
  type        = string
  description = "Default origin server for all properties"
}

variable "sure_route_test_object" {
  type        = string
  description = "Test object path for SureRoute"
  default     = "/akamai/testobject.html"
}

variable "email" {
  type        = string
  description = "Notification email address for activation command"
}

variable "activate_latest_on_staging" {
  type    = bool
  default = true
}

variable "activate_latest_on_production" {
  type    = bool
  default = false
}