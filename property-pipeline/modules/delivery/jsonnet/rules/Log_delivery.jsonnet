local papi = import 'papi/Fresca/latest.libsonnet';
papi.rule {
  name: 'Log delivery',
  comments: |||
    Specify the level of detail you want to be logged in your Log Delivery
    Service reports. Log User-Agent Header to obtain detailed information in the
    Traffic by Browser and OS report.
  |||,
  behaviors: [
    papi.behaviors.report {
      logAcceptLanguage: false,
      logCookies: 'OFF',
      logCustomLogField: false,
      logHost: true,
      logReferer: false,
      logUserAgent: false,
    },
  ],
  children: [
    import 'Log_delivery/Custom_Field.jsonnet',
  ],
}
