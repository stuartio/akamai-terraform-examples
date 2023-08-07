# Aggressive Web Crawlers
resource "akamai_botman_bot_detection_action" "policy_3990012" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.policy.security_policy_id
  detection_id       = "5bc041ad-c840-4202-9c2e-d7fc873dbeaf"
  bot_detection_action = jsonencode(
    {
      "action" : "monitor",
      "detectionId" : "5bc041ad-c840-4202-9c2e-d7fc873dbeaf"
    }
  )
}

# Chrome / Firefox Signature Anomaly
resource "akamai_botman_bot_detection_action" "policy_3900029" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.policy.security_policy_id
  detection_id       = "ec9fef6b-df3e-444c-8fd6-8f3a15373722"
  bot_detection_action = jsonencode(
    {
      "action" : "monitor",
      "detectionId" : "ec9fef6b-df3e-444c-8fd6-8f3a15373722"
    }
  )
}

# Chrome Signature Anomaly
resource "akamai_botman_bot_detection_action" "policy_3900020" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.policy.security_policy_id
  detection_id       = "fcf46e35-aadf-400c-9f57-8c15f75f1e06"
  bot_detection_action = jsonencode(
    {
      "action" : "monitor",
      "detectionId" : "fcf46e35-aadf-400c-9f57-8c15f75f1e06"
    }
  )
}

# Chrome Version Anomaly
resource "akamai_botman_bot_detection_action" "policy_3900021" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.policy.security_policy_id
  detection_id       = "b19372d4-8e47-45bd-9e7f-69144633af1c"
  bot_detection_action = jsonencode(
    {
      "action" : "monitor",
      "detectionId" : "b19372d4-8e47-45bd-9e7f-69144633af1c"
    }
  )
}

# Chrome Version Anomaly
resource "akamai_botman_bot_detection_action" "policy_3900036" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.policy.security_policy_id
  detection_id       = "d064daa7-d5c9-44f5-8389-da974e3d2bfd"
  bot_detection_action = jsonencode(
    {
      "action" : "monitor",
      "detectionId" : "d064daa7-d5c9-44f5-8389-da974e3d2bfd"
    }
  )
}

# Client Disabled JavaScript (Noscript Triggered)
resource "akamai_botman_bot_detection_action" "policy_bot_js_disabled" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.policy.security_policy_id
  detection_id       = "c5623efa-f326-41d1-9601-a2d201bedf63"
  bot_detection_action = jsonencode(
    {
      "action" : "monitor",
      "detectionId" : "c5623efa-f326-41d1-9601-a2d201bedf63"
    }
  )
}

# Comes from a Proxy
resource "akamai_botman_bot_detection_action" "policy_3900012" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.policy.security_policy_id
  detection_id       = "e8243c1f-3622-4186-adea-39334070a64a"
  bot_detection_action = jsonencode(
    {
      "action" : "monitor",
      "detectionId" : "e8243c1f-3622-4186-adea-39334070a64a"
    }
  )
}

# Cookie Integrity Failed
resource "akamai_botman_bot_detection_action" "policy_bot_cookie_eval" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.policy.security_policy_id
  detection_id       = "4f1fd3ea-7072-4cd0-8d12-24f275e6c75d"
  bot_detection_action = jsonencode(
    {
      "action" : "monitor",
      "detectionId" : "4f1fd3ea-7072-4cd0-8d12-24f275e6c75d"
    }
  )
}

# Declared Bots (Keyword Match)
resource "akamai_botman_bot_detection_action" "policy_3990011" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.policy.security_policy_id
  detection_id       = "074df68e-fb28-432a-ac6d-7cfb958425f1"
  bot_detection_action = jsonencode(
    {
      "action" : "monitor",
      "detectionId" : "074df68e-fb28-432a-ac6d-7cfb958425f1"
    }
  )
}

# Development Frameworks
resource "akamai_botman_bot_detection_action" "policy_3990000" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.policy.security_policy_id
  detection_id       = "da005ad3-8bbb-43c8-a783-d97d1fb71ad2"
  bot_detection_action = jsonencode(
    {
      "action" : "monitor",
      "detectionId" : "da005ad3-8bbb-43c8-a783-d97d1fb71ad2"
    }
  )
}

# Firefox Signature Anomaly
resource "akamai_botman_bot_detection_action" "policy_3900023" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.policy.security_policy_id
  detection_id       = "4575a99c-4c77-483f-9578-9760d652acd9"
  bot_detection_action = jsonencode(
    {
      "action" : "monitor",
      "detectionId" : "4575a99c-4c77-483f-9578-9760d652acd9"
    }
  )
}

# Firefox Version Anomaly
resource "akamai_botman_bot_detection_action" "policy_3900022" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.policy.security_policy_id
  detection_id       = "324db2a2-438e-45c3-95cc-f4f9c6e22449"
  bot_detection_action = jsonencode(
    {
      "action" : "monitor",
      "detectionId" : "324db2a2-438e-45c3-95cc-f4f9c6e22449"
    }
  )
}

# Firefox Version Anomaly
resource "akamai_botman_bot_detection_action" "policy_3900037" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.policy.security_policy_id
  detection_id       = "3829f5db-bc06-4c53-a17d-ae857bc72b77"
  bot_detection_action = jsonencode(
    {
      "action" : "monitor",
      "detectionId" : "3829f5db-bc06-4c53-a17d-ae857bc72b77"
    }
  )
}

# HTTP Connection Anomaly
resource "akamai_botman_bot_detection_action" "policy_3900007" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.policy.security_policy_id
  detection_id       = "4ac19d79-2b09-4369-90ab-437153c051a8"
  bot_detection_action = jsonencode(
    {
      "action" : "monitor",
      "detectionId" : "4ac19d79-2b09-4369-90ab-437153c051a8"
    }
  )
}

# HTTP HEAD Method Used
resource "akamai_botman_bot_detection_action" "policy_3900010" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.policy.security_policy_id
  detection_id       = "ddd807da-8d9d-4d7b-81b1-ee0ce6b8f79d"
  bot_detection_action = jsonencode(
    {
      "action" : "monitor",
      "detectionId" : "ddd807da-8d9d-4d7b-81b1-ee0ce6b8f79d"
    }
  )
}

# HTTP Header Anomaly
resource "akamai_botman_bot_detection_action" "policy_3900027" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.policy.security_policy_id
  detection_id       = "1dbdc168-77d5-443d-903d-279262c5ecd5"
  bot_detection_action = jsonencode(
    {
      "action" : "monitor",
      "detectionId" : "1dbdc168-77d5-443d-903d-279262c5ecd5"
    }
  )
}

# HTTP Header Anomaly
resource "akamai_botman_bot_detection_action" "policy_3900009" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.policy.security_policy_id
  detection_id       = "4df4a8c6-568e-4484-a9e3-43c16707385c"
  bot_detection_action = jsonencode(
    {
      "action" : "monitor",
      "detectionId" : "4df4a8c6-568e-4484-a9e3-43c16707385c"
    }
  )
}

# HTTP Header Anomaly
resource "akamai_botman_bot_detection_action" "policy_3900015" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.policy.security_policy_id
  detection_id       = "85a68074-a077-43e2-ab22-71e6b97a944c"
  bot_detection_action = jsonencode(
    {
      "action" : "monitor",
      "detectionId" : "85a68074-a077-43e2-ab22-71e6b97a944c"
    }
  )
}

# HTTP Header Anomaly
resource "akamai_botman_bot_detection_action" "policy_3900016" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.policy.security_policy_id
  detection_id       = "98dc4f86-dac8-43e2-a4ad-125d2e5d5ce8"
  bot_detection_action = jsonencode(
    {
      "action" : "monitor",
      "detectionId" : "98dc4f86-dac8-43e2-a4ad-125d2e5d5ce8"
    }
  )
}

# HTTP Libraries
resource "akamai_botman_bot_detection_action" "policy_3990001" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.policy.security_policy_id
  detection_id       = "578dad32-024b-48b4-930c-db81831686f4"
  bot_detection_action = jsonencode(
    {
      "action" : "monitor",
      "detectionId" : "578dad32-024b-48b4-930c-db81831686f4"
    }
  )
}

# HTTP Protocol Version 1.0 or Lower
resource "akamai_botman_bot_detection_action" "policy_3900008" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.policy.security_policy_id
  detection_id       = "0a0814bf-e92f-4950-8b6b-97586ed404ce"
  bot_detection_action = jsonencode(
    {
      "action" : "monitor",
      "detectionId" : "0a0814bf-e92f-4950-8b6b-97586ed404ce"
    }
  )
}

# Headless Browsers/Automation Tools
resource "akamai_botman_bot_detection_action" "policy_3990004" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.policy.security_policy_id
  detection_id       = "b88cba13-4d11-46fe-a7e0-b47e78892dc4"
  bot_detection_action = jsonencode(
    {
      "action" : "monitor",
      "detectionId" : "b88cba13-4d11-46fe-a7e0-b47e78892dc4"
    }
  )
}

# Impersonators of Known Bots
resource "akamai_botman_bot_detection_action" "policy_3990007" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.policy.security_policy_id
  detection_id       = "fda1ffb9-ef46-4570-929c-7449c0c750f8"
  bot_detection_action = jsonencode(
    {
      "action" : "monitor",
      "detectionId" : "fda1ffb9-ef46-4570-929c-7449c0c750f8"
    }
  )
}

# Internet Explorer Signature Anomaly
resource "akamai_botman_bot_detection_action" "policy_3900025" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.policy.security_policy_id
  detection_id       = "a856cedb-a315-404e-a8cd-c0c7472eca6b"
  bot_detection_action = jsonencode(
    {
      "action" : "monitor",
      "detectionId" : "a856cedb-a315-404e-a8cd-c0c7472eca6b"
    }
  )
}

# Internet Explorer Version Anomaly
resource "akamai_botman_bot_detection_action" "policy_3900039" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.policy.security_policy_id
  detection_id       = "bda9f294-7472-45a0-bd7e-68e8db336f6f"
  bot_detection_action = jsonencode(
    {
      "action" : "monitor",
      "detectionId" : "bda9f294-7472-45a0-bd7e-68e8db336f6f"
    }
  )
}

# Invalid HTTP Request
resource "akamai_botman_bot_detection_action" "policy_3900032" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.policy.security_policy_id
  detection_id       = "0f116fb8-8fc2-4aa8-b85a-22ee02cf8be8"
  bot_detection_action = jsonencode(
    {
      "action" : "monitor",
      "detectionId" : "0f116fb8-8fc2-4aa8-b85a-22ee02cf8be8"
    }
  )
}

# Invalid HTTP Request
resource "akamai_botman_bot_detection_action" "policy_3900030" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.policy.security_policy_id
  detection_id       = "20c6d350-dc73-403f-a3df-3c3eb9c92131"
  bot_detection_action = jsonencode(
    {
      "action" : "monitor",
      "detectionId" : "20c6d350-dc73-403f-a3df-3c3eb9c92131"
    }
  )
}

# Invalid HTTP Request
resource "akamai_botman_bot_detection_action" "policy_3900031" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.policy.security_policy_id
  detection_id       = "d39a6d53-ca93-41e1-8bc1-4119bdcc4155"
  bot_detection_action = jsonencode(
    {
      "action" : "monitor",
      "detectionId" : "d39a6d53-ca93-41e1-8bc1-4119bdcc4155"
    }
  )
}

# Invalid HTTP Request
resource "akamai_botman_bot_detection_action" "policy_3900033" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.policy.security_policy_id
  detection_id       = "f12ade8f-0c27-4cc7-897d-661ed1338df6"
  bot_detection_action = jsonencode(
    {
      "action" : "monitor",
      "detectionId" : "f12ade8f-0c27-4cc7-897d-661ed1338df6"
    }
  )
}

# JavaScript Fingerprint Anomaly
resource "akamai_botman_bot_detection_action" "policy_bot_anomaly_jsfp" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.policy.security_policy_id
  detection_id       = "393cba3d-656f-48f1-abe4-8dd5028c6871"
  bot_detection_action = jsonencode(
    {
      "action" : "monitor",
      "detectionId" : "393cba3d-656f-48f1-abe4-8dd5028c6871"
    }
  )
}

# JavaScript Fingerprint Not Received
resource "akamai_botman_bot_detection_action" "policy_bot_js_not_supported" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.policy.security_policy_id
  detection_id       = "c7f70f75-e3e2-4181-8ef8-30afb6576147"
  bot_detection_action = jsonencode(
    {
      "action" : "monitor",
      "detectionId" : "c7f70f75-e3e2-4181-8ef8-30afb6576147"
    }
  )
}

# MS Edge Signature Anomaly
resource "akamai_botman_bot_detection_action" "policy_3900035" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.policy.security_policy_id
  detection_id       = "e899769f-d537-4204-8548-7b3b8c879121"
  bot_detection_action = jsonencode(
    {
      "action" : "monitor",
      "detectionId" : "e899769f-d537-4204-8548-7b3b8c879121"
    }
  )
}

# Missing Accept-Encoding Header
resource "akamai_botman_bot_detection_action" "policy_3900003" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.policy.security_policy_id
  detection_id       = "305757fb-cd91-4e5e-8390-64609e949c2f"
  bot_detection_action = jsonencode(
    {
      "action" : "monitor",
      "detectionId" : "305757fb-cd91-4e5e-8390-64609e949c2f"
    }
  )
}

# Missing Accept-Language Header
resource "akamai_botman_bot_detection_action" "policy_3900000" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.policy.security_policy_id
  detection_id       = "47fee787-63ab-4a67-a1b3-5d97a6daaf77"
  bot_detection_action = jsonencode(
    {
      "action" : "monitor",
      "detectionId" : "47fee787-63ab-4a67-a1b3-5d97a6daaf77"
    }
  )
}

# Missing Connection Header
resource "akamai_botman_bot_detection_action" "policy_3900004" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.policy.security_policy_id
  detection_id       = "b4b38b0b-8ef4-4b7b-87b5-722c710505d6"
  bot_detection_action = jsonencode(
    {
      "action" : "monitor",
      "detectionId" : "b4b38b0b-8ef4-4b7b-87b5-722c710505d6"
    }
  )
}

# Missing Cookie Header
resource "akamai_botman_bot_detection_action" "policy_3900006" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.policy.security_policy_id
  detection_id       = "57ba6bcb-0d7c-41ac-90ed-aaecd00f97dd"
  bot_detection_action = jsonencode(
    {
      "action" : "monitor",
      "detectionId" : "57ba6bcb-0d7c-41ac-90ed-aaecd00f97dd"
    }
  )
}

# Missing Referer Header
resource "akamai_botman_bot_detection_action" "policy_3900005" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.policy.security_policy_id
  detection_id       = "d98b103e-d02a-47d1-9b17-3c74291d3d32"
  bot_detection_action = jsonencode(
    {
      "action" : "monitor",
      "detectionId" : "d98b103e-d02a-47d1-9b17-3c74291d3d32"
    }
  )
}

# Missing/Contains Empty Accept Header
resource "akamai_botman_bot_detection_action" "policy_3900001" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.policy.security_policy_id
  detection_id       = "705c0f62-6735-4670-9b5b-c61b8b225cd4"
  bot_detection_action = jsonencode(
    {
      "action" : "monitor",
      "detectionId" : "705c0f62-6735-4670-9b5b-c61b8b225cd4"
    }
  )
}

# Missing/Contains Empty User-Agent Header
resource "akamai_botman_bot_detection_action" "policy_3900002" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.policy.security_policy_id
  detection_id       = "a17f3a02-f8ca-400e-96c4-9d2200ff3768"
  bot_detection_action = jsonencode(
    {
      "action" : "monitor",
      "detectionId" : "a17f3a02-f8ca-400e-96c4-9d2200ff3768"
    }
  )
}

# Mozilla Version Anomaly
resource "akamai_botman_bot_detection_action" "policy_3900040" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.policy.security_policy_id
  detection_id       = "994c56b3-4b37-4e8f-8f67-07378b08da9d"
  bot_detection_action = jsonencode(
    {
      "action" : "monitor",
      "detectionId" : "994c56b3-4b37-4e8f-8f67-07378b08da9d"
    }
  )
}

# Open Source Crawlers/Scraping Platforms
resource "akamai_botman_bot_detection_action" "policy_3990003" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.policy.security_policy_id
  detection_id       = "601192ae-f5e2-4a29-8f75-a0bcd3584c2b"
  bot_detection_action = jsonencode(
    {
      "action" : "monitor",
      "detectionId" : "601192ae-f5e2-4a29-8f75-a0bcd3584c2b"
    }
  )
}

# Opera (v9 and above) Signature Anomaly
resource "akamai_botman_bot_detection_action" "policy_3900034" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.policy.security_policy_id
  detection_id       = "eb63ce9c-2119-420b-9fcc-a96ea5aa8453"
  bot_detection_action = jsonencode(
    {
      "action" : "monitor",
      "detectionId" : "eb63ce9c-2119-420b-9fcc-a96ea5aa8453"
    }
  )
}

# Originates from Cloud IaaS Provider Network
resource "akamai_botman_bot_detection_action" "policy_3900013" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.policy.security_policy_id
  detection_id       = "1f4dd032-7cd0-4277-b703-7bb738a8ba71"
  bot_detection_action = jsonencode(
    {
      "action" : "monitor",
      "detectionId" : "1f4dd032-7cd0-4277-b703-7bb738a8ba71"
    }
  )
}

# Perl LWP Detected
resource "akamai_botman_bot_detection_action" "policy_3900019" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.policy.security_policy_id
  detection_id       = "4f1d7c15-356d-4bb2-b52c-ff12dbf2fd29"
  bot_detection_action = jsonencode(
    {
      "action" : "monitor",
      "detectionId" : "4f1d7c15-356d-4bb2-b52c-ff12dbf2fd29"
    }
  )
}

# PhantomJS Detected
resource "akamai_botman_bot_detection_action" "policy_3900026" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.policy.security_policy_id
  detection_id       = "715b8ee1-5881-407d-b6b8-5db24b17cff5"
  bot_detection_action = jsonencode(
    {
      "action" : "monitor",
      "detectionId" : "715b8ee1-5881-407d-b6b8-5db24b17cff5"
    }
  )
}

# Python Urllib Detected
resource "akamai_botman_bot_detection_action" "policy_3900017" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.policy.security_policy_id
  detection_id       = "82636d9c-90c9-449f-b2c0-8ecfe4ecec92"
  bot_detection_action = jsonencode(
    {
      "action" : "monitor",
      "detectionId" : "82636d9c-90c9-449f-b2c0-8ecfe4ecec92"
    }
  )
}

# Request Anomaly
resource "akamai_botman_bot_detection_action" "policy_bot_anomaly_header" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.policy.security_policy_id
  detection_id       = "3f799d4b-33b9-496b-af87-9ad174779e3d"
  bot_detection_action = jsonencode(
    {
      "action" : "monitor",
      "detectionId" : "3f799d4b-33b9-496b-af87-9ad174779e3d"
    }
  )
}

# Ruby Net Detected
resource "akamai_botman_bot_detection_action" "policy_3900018" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.policy.security_policy_id
  detection_id       = "e8dbf4fd-1aaf-41bf-baa1-a17503b2c7f8"
  bot_detection_action = jsonencode(
    {
      "action" : "monitor",
      "detectionId" : "e8dbf4fd-1aaf-41bf-baa1-a17503b2c7f8"
    }
  )
}

# Safari Signature Anomaly
resource "akamai_botman_bot_detection_action" "policy_3900038" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.policy.security_policy_id
  detection_id       = "2814da26-5280-449d-a0d3-a64ddea3c128"
  bot_detection_action = jsonencode(
    {
      "action" : "monitor",
      "detectionId" : "2814da26-5280-449d-a0d3-a64ddea3c128"
    }
  )
}

# Safari Version Anomaly
resource "akamai_botman_bot_detection_action" "policy_3900024" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.policy.security_policy_id
  detection_id       = "444e9509-1d9f-44b8-8f73-bbf71dc3f4d1"
  bot_detection_action = jsonencode(
    {
      "action" : "monitor",
      "detectionId" : "444e9509-1d9f-44b8-8f73-bbf71dc3f4d1"
    }
  )
}

# Session Cookie Abuse Detection
resource "akamai_botman_bot_detection_action" "policy_3900097" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.policy.security_policy_id
  detection_id       = "7af8f977-0d3f-446f-ae48-7e6973c75479"
  bot_detection_action = jsonencode(
    {
      "action" : "monitor",
      "detectionId" : "7af8f977-0d3f-446f-ae48-7e6973c75479"
    }
  )
}

# Session Validation
resource "akamai_botman_bot_detection_action" "policy_bot_session_eval" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.policy.security_policy_id
  detection_id       = "1bb748e2-b3ad-41db-85fa-c69e62be59dc"
  bot_detection_action = jsonencode(
    {
      "action" : "monitor",
      "detectionId" : "1bb748e2-b3ad-41db-85fa-c69e62be59dc",
      "sessionActivitySensitivity" : "MEDIUM"
    }
  )
}

# User-Agent Header Anomaly
resource "akamai_botman_bot_detection_action" "policy_3900014" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.policy.security_policy_id
  detection_id       = "56c2a7f3-9d4f-4685-9544-521bcb00c612"
  bot_detection_action = jsonencode(
    {
      "action" : "monitor",
      "detectionId" : "56c2a7f3-9d4f-4685-9544-521bcb00c612"
    }
  )
}

# User-Agent Header Anomaly
resource "akamai_botman_bot_detection_action" "policy_3900028" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.policy.security_policy_id
  detection_id       = "973b4b4e-44c7-4067-9ee0-b791b580cb9e"
  bot_detection_action = jsonencode(
    {
      "action" : "monitor",
      "detectionId" : "973b4b4e-44c7-4067-9ee0-b791b580cb9e"
    }
  )
}

# User-Agent Header Anomaly
resource "akamai_botman_bot_detection_action" "policy_3900011" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.policy.security_policy_id
  detection_id       = "d00e788b-8916-4181-9922-71c749ed1752"
  bot_detection_action = jsonencode(
    {
      "action" : "monitor",
      "detectionId" : "d00e788b-8916-4181-9922-71c749ed1752"
    }
  )
}

# Web Scraper Reputation
resource "akamai_botman_bot_detection_action" "policy_bot_reputation_eval" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.policy.security_policy_id
  detection_id       = "9712ab32-83bb-43ab-a46d-4c2a5a42e7e2"
  bot_detection_action = jsonencode(
    {
      "action" : "monitor",
      "detectionId" : "9712ab32-83bb-43ab-a46d-4c2a5a42e7e2",
      "webScraperReputationSensitivity" : 10
    }
  )
}

# Web Services Libraries
resource "akamai_botman_bot_detection_action" "policy_3990002" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.policy.security_policy_id
  detection_id       = "872ed6c2-514c-4055-9c44-9782b1c783bf"
  bot_detection_action = jsonencode(
    {
      "action" : "monitor",
      "detectionId" : "872ed6c2-514c-4055-9c44-9782b1c783bf"
    }
  )
}
