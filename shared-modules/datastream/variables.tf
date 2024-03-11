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

variable "property_ids" {
  type        = list
  description = "Property IDs to link to this data stream"
}

variable "stream_name" {
  type        = string
  description = "Name for this datastream"
}