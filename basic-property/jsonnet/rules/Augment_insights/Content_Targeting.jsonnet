local papi = import 'papi/Fresca/latest.libsonnet';
papi.rule {
  name: 'Content Targeting',
  behaviors: [
    papi.behaviors.edgeScape {
      enabled: true,
    },
  ],
}
