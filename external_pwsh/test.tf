data "external" "siteshield" {
  program = ["pwsh", "-NoProfile", "${path.module}/external/tf-pwsh.ps1"]

  query = {
    Command    = "Get-SiteshieldMap"
    ID         = 1911348
    EdgeRCFile = var.edgerc_path
    Section    = var.config_section
  }
}

data "external" "selectable_hostnames" {
  program = ["pwsh", "-NoProfile", "${path.module}/external/tf-pwsh.ps1"]

  query = {
    Command    = "Get-AppSecSelectableHostnames"
    ConfigName = "smacleod"
    Version    = "latest"
    EdgeRCFile = var.edgerc_path
    Section    = var.config_section
  }
}

output "cidrs" {
  value = jsondecode(data.external.siteshield.result.json).currentCidrs
}

output "hostnames" {
  value = jsondecode(data.external.selectable_hostnames.result.json)
}
