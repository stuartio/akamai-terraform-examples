local papi = import 'papi/Fresca/latest.libsonnet';
papi.rule {
  name: 'Timeouts',
  comments: 'Optimize the connection between edge and origin.',
  behaviors: [
    papi.behaviors.dnsAsyncRefresh {
      enabled: true,
      timeout: '1h',
    },
    papi.behaviors.timeout {
      value: '5s',
    },
    papi.behaviors.readTimeout {
      value: '120s',
    },
  ],
}
