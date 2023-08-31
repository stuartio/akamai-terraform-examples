# Terraform Examples

This repo contains various examples of using Terraform to deploy Akamai configuration. Each folder is a self-contained collection of TF configs, described below:

- basic-property - A simple Property Manager property with examples of the same rule tree in JSON snippets and JSONNET format
- basic-property-hcl - A simple Property Manager property with its rule tree represented as akamai_property_rules_builder data sources in a single file
- certificate - A CPS DV certificate enrollment
- dns - An EdgeDNS zone
- multiple-apps - This folder contains a module covering the following apps
    - App & API Protector
    - Certificate Provisioning System
    - Image and Video Manager (both Image and Video policies)
    - Network Lists
    - Edge Redirector Cloudlet
    - Property Manager
- property-pipeline - An example of using Terraform modules to pipeline property changes through multiple environments

> Note: As the name suggests, these are _examples_ and no support of any kind is offered. Also, when the Akamai Terraform Provider is updated, occasionally changes are introduced which will invalidate something in this repo. Every effort will be made to keep the code here up to date, but there may be slight manual changes required from time to time