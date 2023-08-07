resource "akamai_appsec_configuration" "config" {
  name        = var.config_name
  description = var.notes
  contract_id = var.contract_id
  group_id    = var.group_id
  host_names  = var.hostnames
  lifecycle {
    ignore_changes = [
      description,
    ]
  }
}

output "config_id" {
  value = akamai_appsec_configuration.config.config_id
}
