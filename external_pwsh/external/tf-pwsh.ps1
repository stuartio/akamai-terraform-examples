# Read parameters from stdin and convertto hashtable
$Parameters = [Console]::In.ReadLine() | ConvertFrom-Json -AsHashtable
# Make Akamai call with splatted params
$Command = $Parameters['Command']
if ($null -eq $Command) {
    Write-Error "Command missing from input map"
    return
}
$Parameters.Remove('Command')
$Result = Invoke-Expression "$Command @Parameters"
$ResultJSON = ConvertTo-Json -InputObject $Result -Depth 100 | ConvertTo-Json
# Remove carriage returns
$ResultJSON = $ResultJSON.replace("\r", "")
$Output = @"
{
  "json": $ResultJSON
}
"@
# Return output back to Terraform
return $Output