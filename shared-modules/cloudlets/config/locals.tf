locals {
  sanitized_policy_name = replace(var.hostname, ".", "_")
}
