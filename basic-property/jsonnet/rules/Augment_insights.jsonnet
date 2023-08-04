local papi = import 'papi/Fresca/latest.libsonnet';
papi.rule {
  name: 'Augment insights',
  comments: |||
    Control the settings related to monitoring and reporting. This gives you
    additional visibility into your traffic and audiences.
  |||,
  children: [
    import 'Augment_insights/Traffic_reporting.jsonnet',
    import 'Augment_insights/mPulse_RUM.jsonnet',
    import 'Augment_insights/Content_Targeting.jsonnet',
    import 'Augment_insights/Log_delivery.jsonnet',
    import 'Augment_insights/Global_Request_Number.jsonnet',
    import 'Augment_insights/Breadcrumbs.jsonnet',
  ],
}
