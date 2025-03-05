local papi = import 'papi/Fresca/latest.libsonnet';
papi.rule {
  name: 'Tiered Distribution',
  behaviors: [
    papi.behaviors.tieredDistribution {
      enabled: true,
      tieredDistributionMap: 'CH2',
    },
  ],
}
