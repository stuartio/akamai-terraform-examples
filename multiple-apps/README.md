## POC Onboarding

Terraform library to onboard the following:

- CPS DV Certificate
- Image & Video Manager policies (Images & Videos)
- Property
- Network Lists
- AAP Config with single policy

Usage:

- Copy the file `terraform.tfvars.sample` to `terraform.tfvars` and update variable values to your spec
- run `terraform plan -out <plan name>` This will save the plan to `<plan name>`
- run `terraform apply <plan name>`

Note that each hostname in the supplied list will result in a separate property (each with multiple dedicated CP Codes). However, the module will only create one of each of the following:
- IVM policy set for images
- IVM policy set for videos
- Set of network lists for various purposes
- AAP config with a single policy

Currently supported variables are below. Note that some may not be present in the terraform.tfvars.sample as they contain default values

- contract_id - Contract ID for property/config creation
- group_id - Group ID for property/config creation
- hostnames - List of hostnames to be used
- rule_format - Property rule format. Default = "latest"
- default_origin - Default origin server for all properties
- sure_route_test_object -Test object path for SureRoute. Default = "/akamai/testobject.html"
- td_region - Region (map) for Tiered Distribution behaviour. Only applies if network is Standard TLS. Options are: CH2, CHAPAC, CHEU2, CHEUS2, CHWUS2, CHCUS2, CHAUS. Default = "CH2"
- enhanced_tls - Boolean to switch between Enhanced and Standard TLS modes
- email - Email address used for activations
- project_name - Name of the overall project. Used to name various resources. Should only contain letters, numbers and underscores
- ip_block_list - List of IPs for 'IP Block List' Netowrk List. Default = []
- ip_block_list_exceptions - List of IPs for 'IP Block List Exceptions' Netowrk List. Default = []
- geo_block_list - List of Geos for 'Security Bypass List' Netowrk List. Default = []
- security_bypass_list - List of IPs for 'Security Bypass List' Netowrk List. Default = []
- rate_bypass_list - List of IPs for 'Rate Control Bypass List' Netowrk List. Default = []
- pragma_exceptions - List of IPs for 'Pragma Removal Exceptions' Netowrk List. Default = []
- enable_siem - On/Off option for SIEM feature. Default = true
- enable_client_rep - On/Off option for Client Reputation feature. Default = true
- enable_slow_post - On/Off option for Slow Post feature. Default = true
- account_key - Account Switch Key, used in property activation hack
- section - EdgeRC section, used in property activation hack. Default = "default"