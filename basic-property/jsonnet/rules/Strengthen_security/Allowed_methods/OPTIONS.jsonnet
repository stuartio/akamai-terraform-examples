local papi = import 'papi/Fresca/latest.libsonnet';
papi.rule {
  name: 'OPTIONS',
  comments: 'Allow use of the OPTIONS HTTP request method.',
  behaviors: [
    papi.behaviors.allowOptions {
      enabled: true,
    },
  ],
}
