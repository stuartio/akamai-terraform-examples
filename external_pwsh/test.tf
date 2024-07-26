data "external" "siteshield" {
  program = ["pwsh", "-NoProfile", "${path.module}/external/tf-pwsh.ps1"]

  query = {
    EdgeRCFile = var.edgerc_path
    Section    = var.config_section
    Command    = "Get-SiteshieldMap"
    ID         = 1911348
  }
}

data "external" "selectable_hostnames" {
  program = ["pwsh", "-NoProfile", "${path.module}/external/tf-pwsh.ps1"]

  query = {
    EdgeRCFile = var.edgerc_path
    Section    = var.config_section
    Command    = "Get-AppSecSelectableHostnames"
    ConfigName = "smacleod"
    Version    = "latest"
  }
}

output "cidrs" {
  value = jsondecode(data.external.siteshield.result.json).currentCidrs
}

output "hostnames" {
  value = jsondecode(data.external.selectable_hostnames.result.json)
}
