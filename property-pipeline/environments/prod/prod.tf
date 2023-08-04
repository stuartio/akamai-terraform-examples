module "delivery" {
    source = "../../modules/delivery"
    activation_note = "Activation!"
    email = "sre@example.com"
    group_name = "sample"
    hostnames = [
        "www.example.com",
        "api.example.com"
    ]
    origin1 = "origin.example.com"
    property_name = "tfpipeline-prod"
    activate_to_production = true
    activate_to_staging = true
}