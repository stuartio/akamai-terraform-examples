terraform {
  required_version = ">= 0.13"
  required_providers {
    akamai = {
      source = "akamai/akamai"
      version = ">= 4.0.0"
    }
  }
}

locals {
    zone = "example.com"
}

resource "akamai_dns_zone" "example_com" {
    contract = var.contract_id
    group = var.groupid
    zone = local.zone
    type = "PRIMARY"
    masters = []
    comment = ""
    sign_and_serve = false
    sign_and_serve_algorithm = ""
    target = ""
    end_customer_id = ""
}


resource "akamai_dns_record" "example_com_example_com_AKAMAITLC" {
    zone = local.zone
    name = "example.com"
    recordtype = "AKAMAITLC"
    target = []
    ttl = 1800
}

resource "akamai_dns_record" "example_com_example_com_CAA" {
    zone = local.zone
    name = "example.com"
    recordtype = "CAA"
    target = ["0 issue \"letsencrypt.org\"", "0 issue \"digicert.com\""]
    ttl = 1800
}

resource "akamai_dns_record" "example_com_example_com_NS" {
    zone = local.zone
    name = "example.com"
    recordtype = "NS"
    target = ["a1-91.akam.net.", "a13-64.akam.net.", "a20-65.akam.net.", "a22-66.akam.net.", "a24-67.akam.net.", "a9-64.akam.net."]
    ttl = 86400
}

resource "akamai_dns_record" "example_com_example_com_SOA" {
    zone = local.zone
    email_address = "hostmaster.example.com."
    expiry = 604800
    name = "example.com"
    name_server = "a1-91.akam.net."
    nxdomain_ttl = 300
    recordtype = "SOA"
    refresh = 3600
    retry = 600
    target = []
    ttl = 86400
}

resource "akamai_dns_record" "example_com_example_com_TXT" {
    zone = local.zone
    name = "example.com"
    recordtype = "TXT"
    target = ["\"v=spf1 include:hotmail.com ~all\"", "\"MS=ms44571570\""]
    ttl = 3600
}

resource "akamai_dns_record" "example_com__dnsauth_example_com_TXT" {
    zone = local.zone
    name = "_dnsauth.example.com"
    recordtype = "TXT"
    target = ["\"r3y6hyhg566y1zyzm8c9bjc33s2t5yth\""]
    ttl = 1800
}

resource "akamai_dns_record" "example_com_autodiscover_example_com_CNAME" {
    zone = local.zone
    name = "autodiscover.example.com"
    recordtype = "CNAME"
    target = ["autodiscover.outlook.com."]
    ttl = 1800
}

resource "akamai_dns_record" "example_com_kibana_example_com_A" {
    zone = local.zone
    name = "kibana.example.com"
    recordtype = "A"
    target = ["18.133.176.108"]
    ttl = 600
}

resource "akamai_dns_record" "example_com_origin-blue_example_com_CNAME" {
    zone = local.zone
    name = "origin-blue.example.com"
    recordtype = "CNAME"
    target = ["origin.example.com."]
    ttl = 1800
}

resource "akamai_dns_record" "example_com_origin-demo_example_com_CNAME" {
    zone = local.zone
    name = "origin-demo.example.com"
    recordtype = "CNAME"
    target = ["origin.example.com."]
    ttl = 3600
}

resource "akamai_dns_record" "example_com_origin_example_com_CNAME" {
    zone = local.zone
    name = "origin.example.com"
    recordtype = "CNAME"
    target = ["linode.example.com."]
    ttl = 300
}

resource "akamai_dns_record" "example_com_origin1_example_com_A" {
    zone = local.zone
    name = "origin1.example.com"
    recordtype = "A"
    target = ["23.92.24.17"]
    ttl = 1800
}

resource "akamai_dns_record" "example_com_secure_example_com_CNAME" {
    zone = local.zone
    name = "secure.example.com"
    recordtype = "CNAME"
    target = ["secure.example.com.edgekey-staging.net."]
    ttl = 1800
}

resource "akamai_dns_record" "example_com_shop_example_com_CNAME" {
    zone = local.zone
    name = "shop.example.com"
    recordtype = "CNAME"
    target = ["ion.example.com.edgesuite-staging.net."]
    ttl = 1800
}

resource "akamai_dns_record" "example_com_vpn_example_com_A" {
    zone = local.zone
    name = "vpn.example.com"
    recordtype = "A"
    target = ["139.162.242.97"]
    ttl = 1800
}

resource "akamai_dns_record" "example_com_www_example_com_CNAME" {
    zone = local.zone
    name = "www.example.com"
    recordtype = "CNAME"
    target = ["www.example.com.edgesuite.net."]
    ttl = 300
}

resource "akamai_dns_record" "example_com__sipfederationtls__tcp_example_com__tcp_example_com_SRV" {
    zone = local.zone
    name = "_sipfederationtls._tcp.example.com._tcp.example.com"
    port = 5061
    priority = 10
    recordtype = "SRV"
    target = ["federation.messenger.msn.com."]
    ttl = 1800
    weight = 2
}
