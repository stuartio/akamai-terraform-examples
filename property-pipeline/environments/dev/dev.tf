module "delivery" {
    source = "../../modules/delivery"
    activation_note = "Activation!"
    email = "sre@example.com"
    group_name = "sample"
    hostnames = [
        "dev.example.com",
        "dev-api.example.com"
    ]
    origin1 = "origin-dev.example.com"
    property_name = "tfpipeline-dev"
    activate_to_production = true
    activate_to_staging = true
}