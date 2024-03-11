local papi = import 'papi/Fresca/latest.libsonnet';
papi.rule {
  name: 'Site failover',
  comments: 'Specify how edge servers respond when the origin is not available.',
  criteria: [
    papi.criteria.originTimeout {
      matchOperator: 'ORIGIN_TIMED_OUT',
    },
  ],
  behaviors: [
    papi.behaviors.failAction {
      enabled: false,
    },
  ],
}
