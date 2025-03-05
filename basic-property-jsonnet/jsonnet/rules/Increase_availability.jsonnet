local papi = import 'papi/Fresca/latest.libsonnet';
papi.rule {
  name: 'Increase availability',
  comments: |||
    Control how to respond when your origin or third parties are slow or even
    down to minimize the negative impact on user experience.
  |||,
  children: [
    import 'Increase_availability/Simulate_failover.jsonnet',
    import 'Increase_availability/Site_failover.jsonnet',
    import 'Increase_availability/Origin_health.jsonnet',
  ],
}
