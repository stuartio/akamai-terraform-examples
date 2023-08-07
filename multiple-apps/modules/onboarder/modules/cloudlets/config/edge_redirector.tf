resource "akamai_cloudlets_policy" "edge_redirector" {
  name          = var.hostname
  cloudlet_code = "ER"
  description   = "Redirects for property ${var.hostname}"
  group_id      = var.group_id
  match_rules   = file("${path.module}/rules/edge_redirector.json")
}

output "edge_redirector_policy_id" {
  value = akamai_cloudlets_policy.edge_redirector.id
}
