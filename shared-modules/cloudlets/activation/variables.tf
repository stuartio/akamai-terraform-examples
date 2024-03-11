variable "edge_redirector_policy_id" {
  type        = number
  description = "ID of Edge Redirector policy"
}

variable "edge_redirector_policy_version" {
  type        = number
  description = "Version of Edge Redirector policy"
}

variable "edge_redirector_properties" {
  type        = list(string)
  description = "List of properties with which to associate Edge Redirector policy activation"
}
