data "akamai_property_rules_builder" "property_rule_edge_redirector" {
  rules_v2023_05_30 {
    name                  = "Edge Redirector"
    criteria_must_satisfy = "all"
    behavior {
      edge_redirector {
        enabled          = true
        is_shared_policy = false
        cloudlet_policy {
          id = var.edge_redirector_policy_id
          name = var.edge_redirector_policy_name
        }
      }
    }
  }
}
