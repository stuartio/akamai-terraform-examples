local papi = import 'papi/Fresca/latest.libsonnet';
papi.rule {
  name: 'CORS',
  behaviors: [
    papi.behaviors.corsSupport {
      enabled: false,
    },
  ],
}
