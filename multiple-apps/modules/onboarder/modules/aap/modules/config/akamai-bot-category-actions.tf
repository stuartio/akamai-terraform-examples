## Akamai Bot Category Actions

# Academic or Research Bots
resource "akamai_botman_akamai_bot_category_action" "policy_academic_or_research" {
  config_id                  = akamai_appsec_configuration.config.config_id
  security_policy_id         = akamai_appsec_security_policy.policy.security_policy_id
  category_id                = "0c508e1d-73a4-4366-9e48-3c4a080f1c5d"
  akamai_bot_category_action = jsonencode(
    {
        "action": "monitor",
        "categoryId": "0c508e1d-73a4-4366-9e48-3c4a080f1c5d"
    }
  )
}

# Automated Shopping Cart and Sniper Bots
resource "akamai_botman_akamai_bot_category_action" "policy_automated_shopping_cart" {
  config_id                  = akamai_appsec_configuration.config.config_id
  security_policy_id         = akamai_appsec_security_policy.policy.security_policy_id
  category_id                = "75493431-b41a-492c-8324-f12158783ce1"
  akamai_bot_category_action = jsonencode(
    {
        "action": "monitor",
        "categoryId": "75493431-b41a-492c-8324-f12158783ce1"
    }
  )
}

# Business Intelligence Bots
resource "akamai_botman_akamai_bot_category_action" "policy_business_intelligence" {
  config_id                  = akamai_appsec_configuration.config.config_id
  security_policy_id         = akamai_appsec_security_policy.policy.security_policy_id
  category_id                = "8a70d29c-a491-4583-9768-7deea2f379c1"
  akamai_bot_category_action = jsonencode(
    {
        "action": "monitor",
        "categoryId": "8a70d29c-a491-4583-9768-7deea2f379c1"
    }
  )
}

# E-Commerce Search Engine Bots
resource "akamai_botman_akamai_bot_category_action" "policy_ecommerce_search_engine" {
  config_id                  = akamai_appsec_configuration.config.config_id
  security_policy_id         = akamai_appsec_security_policy.policy.security_policy_id
  category_id                = "47bcfb70-f3f5-458b-8f7c-1773b14bc6a4"
  akamai_bot_category_action = jsonencode(
    {
        "action": "monitor",
        "categoryId": "47bcfb70-f3f5-458b-8f7c-1773b14bc6a4"
    }
  )
}

# Enterprise Data Aggregator Bots
resource "akamai_botman_akamai_bot_category_action" "policy_enterprise_data_aggregator" {
  config_id                  = akamai_appsec_configuration.config.config_id
  security_policy_id         = akamai_appsec_security_policy.policy.security_policy_id
  category_id                = "50395ad2-2673-41a4-b317-9b70742fd40f"
  akamai_bot_category_action = jsonencode(
    {
        "action": "monitor",
        "categoryId": "50395ad2-2673-41a4-b317-9b70742fd40f"
    }
  )
}

# Financial Account Aggregator Bots
resource "akamai_botman_akamai_bot_category_action" "policy_financial_account_aggregator" {
  config_id                  = akamai_appsec_configuration.config.config_id
  security_policy_id         = akamai_appsec_security_policy.policy.security_policy_id
  category_id                = "c6692e03-d3a8-49b0-9566-5003eeaddbc1"
  akamai_bot_category_action = jsonencode(
    {
        "action": "monitor",
        "categoryId": "c6692e03-d3a8-49b0-9566-5003eeaddbc1"
    }
  )
}

# Financial Services Bots
resource "akamai_botman_akamai_bot_category_action" "policy_financial_services" {
  config_id                  = akamai_appsec_configuration.config.config_id
  security_policy_id         = akamai_appsec_security_policy.policy.security_policy_id
  category_id                = "53598904-21f5-46b1-8b51-1b991beef73b"
  akamai_bot_category_action = jsonencode(
    {
        "action": "monitor",
        "categoryId": "53598904-21f5-46b1-8b51-1b991beef73b"
    }
  )
}

# Job Search Engine Bots
resource "akamai_botman_akamai_bot_category_action" "policy_job_search_engine" {
  config_id                  = akamai_appsec_configuration.config.config_id
  security_policy_id         = akamai_appsec_security_policy.policy.security_policy_id
  category_id                = "2f169206-f32c-48f7-b281-d534cf1ceeb3"
  akamai_bot_category_action = jsonencode(
    {
        "action": "monitor",
        "categoryId": "2f169206-f32c-48f7-b281-d534cf1ceeb3"
    }
  )
}

# Media or Entertainment Search Bots
resource "akamai_botman_akamai_bot_category_action" "policy_media_or_entertainment_search" {
  config_id                  = akamai_appsec_configuration.config.config_id
  security_policy_id         = akamai_appsec_security_policy.policy.security_policy_id
  category_id                = "dff258d5-b1ad-4bbb-b1d1-cf8e700e5bba"
  akamai_bot_category_action = jsonencode(
    {
        "action": "monitor",
        "categoryId": "dff258d5-b1ad-4bbb-b1d1-cf8e700e5bba"
    }
  )
}

# News Aggregator Bots
resource "akamai_botman_akamai_bot_category_action" "policy_news_aggregator" {
  config_id                  = akamai_appsec_configuration.config.config_id
  security_policy_id         = akamai_appsec_security_policy.policy.security_policy_id
  category_id                = "ade03247-6519-4591-8458-9b7347004b63"
  akamai_bot_category_action = jsonencode(
    {
        "action": "monitor",
        "categoryId": "ade03247-6519-4591-8458-9b7347004b63"
    }
  )
}

# Online Advertising Bots
resource "akamai_botman_akamai_bot_category_action" "policy_online_advertising" {
  config_id                  = akamai_appsec_configuration.config.config_id
  security_policy_id         = akamai_appsec_security_policy.policy.security_policy_id
  category_id                = "36b27e0c-76fc-44a4-b913-c598c5af8bba"
  akamai_bot_category_action = jsonencode(
    {
        "action": "monitor",
        "categoryId": "36b27e0c-76fc-44a4-b913-c598c5af8bba"
    }
  )
}

# RSS Feed Reader Bots
resource "akamai_botman_akamai_bot_category_action" "policy_rss_feed_reader" {
  config_id                  = akamai_appsec_configuration.config.config_id
  security_policy_id         = akamai_appsec_security_policy.policy.security_policy_id
  category_id                = "b58c9929-9fd0-45f7-86f4-1d6259285c3c"
  akamai_bot_category_action = jsonencode(
    {
        "action": "monitor",
        "categoryId": "b58c9929-9fd0-45f7-86f4-1d6259285c3c"
    }
  )
}

# SEO, Analytics or Marketing Bots
resource "akamai_botman_akamai_bot_category_action" "policy_seo_analytics_marketing" {
  config_id                  = akamai_appsec_configuration.config.config_id
  security_policy_id         = akamai_appsec_security_policy.policy.security_policy_id
  category_id                = "f7558c03-9033-46ce-bbda-10eeda62a5d4"
  akamai_bot_category_action = jsonencode(
    {
        "action": "monitor",
        "categoryId": "f7558c03-9033-46ce-bbda-10eeda62a5d4"
    }
  )
}

# Site Monitoring and Web Development Bots
resource "akamai_botman_akamai_bot_category_action" "policy_site_monitoring_web_development" {
  config_id                  = akamai_appsec_configuration.config.config_id
  security_policy_id         = akamai_appsec_security_policy.policy.security_policy_id
  category_id                = "07782c03-8d21-4491-9078-b83514e6508f"
  akamai_bot_category_action = jsonencode(
    {
        "action": "monitor",
        "categoryId": "07782c03-8d21-4491-9078-b83514e6508f"
    }
  )
}

# Social Media or Blog Bots
resource "akamai_botman_akamai_bot_category_action" "policy_social_media_or_blog" {
  config_id                  = akamai_appsec_configuration.config.config_id
  security_policy_id         = akamai_appsec_security_policy.policy.security_policy_id
  category_id                = "7035af8d-148c-429a-89da-de41e68c72d8"
  akamai_bot_category_action = jsonencode(
    {
        "action": "monitor",
        "categoryId": "7035af8d-148c-429a-89da-de41e68c72d8"
    }
  )
}

# Web Archiver Bots
resource "akamai_botman_akamai_bot_category_action" "policy_web_archiver" {
  config_id                  = akamai_appsec_configuration.config.config_id
  security_policy_id         = akamai_appsec_security_policy.policy.security_policy_id
  category_id                = "831ef84a-c2bb-4b0d-b90d-bcd16793b830"
  akamai_bot_category_action = jsonencode(
    {
        "action": "monitor",
        "categoryId": "831ef84a-c2bb-4b0d-b90d-bcd16793b830"
    }
  )
}

# Web Search Engine Bots
resource "akamai_botman_akamai_bot_category_action" "policy_web_search_engine" {
  config_id                  = akamai_appsec_configuration.config.config_id
  security_policy_id         = akamai_appsec_security_policy.policy.security_policy_id
  category_id                = "4e14219f-6568-4c9d-9bd8-b29ca2afc422"
  akamai_bot_category_action = jsonencode(
    {
        "action": "monitor",
        "categoryId": "4e14219f-6568-4c9d-9bd8-b29ca2afc422"
    }
  )
}