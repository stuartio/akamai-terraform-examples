## Multiple Apps

Terraform library to onboard the following:

- CPS DV Certificate
- Image & Video Manager policies (Images & Videos)
- Property
- Network Lists
- AAP Config with single policy
- Cloudlets (currently only Edge Redirector)

Usage:

- Copy the file `terraform.tfvars.sample` to `terraform.tfvars` and update variable values to your spec
- run `terraform plan -out <plan name>` This will save the plan to `<plan name>`
- run `terraform apply <plan name>`

Currently supported variables are below. Note that some may not be present in the terraform.tfvars.sample as they contain default values, and that all include_* variables default to false, so if you don't change at least one of them to true, nothing will happen

- include_security - Boolean to control inclusion of AAP and Network List modules
- include_ivm_images - Boolean to control inclusion of Image Manager (Images) module
- include_ivm_videos - Boolean to control inclusion of Image Manager (Videos) module
- include_cloudlets - Boolean to control inclusion of Cloudlets module
- include_property - Boolean to control inclusion of Property module
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
- section - EdgeRC section