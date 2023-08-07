locals{
    activation_note = "Terraform update ${timestamp()}"
}

resource "akamai_appsec_activations" "activation-staging" {
    config_id = var.config_id
    network = "STAGING"
    notification_emails = var.notification_emails
    notes = local.version_notes
}

resource "akamai_appsec_activations" "activation-production" {
    config_id = var.config_id
    network = "PRODUCTION"
    notification_emails = var.notification_emails
    notes = local.version_notes
}