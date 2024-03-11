resource "akamai_cloudlets_policy_activation" "edge_redirector_staging" {
  policy_id             = var.edge_redirector_policy_id
  network               = "staging"
  version               = var.edge_redirector_policy_version
  associated_properties = var.edge_redirector_properties
}

resource "akamai_cloudlets_policy_activation" "edge_redirector_production" {
  policy_id             = var.edge_redirector_policy_id
  network               = "production"
  version               = var.edge_redirector_policy_version
  associated_properties = var.edge_redirector_properties
  depends_on            = [akamai_cloudlets_policy_activation.edge_redirector_staging]
}
