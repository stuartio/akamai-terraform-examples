resource "akamai_imaging_policy_set" "images" {
    contract_id     = var.contract_id
    name            = "${var.policy_set_name}-Images"
    region          = var.region
    type            = "IMAGE"
}

resource "akamai_imaging_policy_set" "videos" {
    contract_id     = var.contract_id
    name            = "${var.policy_set_name}-Videos"
    region          = var.region
    type            = "VIDEO"
}

resource "akamai_imaging_policy_image" "policy" {
    activate_on_production = var.activate_on_production
    contract_id            = var.contract_id
    policy_id              = ".auto"
    policyset_id           = akamai_imaging_policy_set.images.id
    json                   = file("${path.module}/policies/images.json")
}

resource "akamai_imaging_policy_video" "policy" {
    activate_on_production = var.activate_on_production
    contract_id            = var.contract_id
    policy_id              = ".auto"
    policyset_id           = akamai_imaging_policy_set.videos.id
    json                   = file("${path.module}/policies/videos.json")  
}

output "image_policyset_id" {
    value = akamai_imaging_policy_set.images.id
}

output "video_policyset_id" {
    value = akamai_imaging_policy_set.videos.id
}