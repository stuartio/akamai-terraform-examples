resource "akamai_cloudlets_policy" "edge_redirector" {
  name          = local.sanitized_policy_name
  cloudlet_code = "ER"
  description   = "Redirects for property ${var.hostname}"
  group_id      = var.group_id
  match_rules   = file("${path.module}/rules/edge_redirector.json")
}
