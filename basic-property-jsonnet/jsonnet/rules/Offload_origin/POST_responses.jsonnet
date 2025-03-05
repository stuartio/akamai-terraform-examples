local papi = import 'papi/Fresca/latest.libsonnet';
papi.rule {
  name: 'POST responses',
  comments: |||
    Define when HTTP POST requests should be cached. You should enable it under
    a criteria match.
  |||,
  behaviors: [
    papi.behaviors.cachePost {
      enabled: false,
    },
  ],
}
