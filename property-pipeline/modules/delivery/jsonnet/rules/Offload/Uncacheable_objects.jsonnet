local papi = import 'papi/Fresca/latest.libsonnet';
papi.rule {
  name: 'Uncacheable objects',
  comments: |||
    Configure the default client caching behavior for uncacheable content at the
    edge.
  |||,
  criteria: [
    papi.criteria.cacheability {
      matchOperator: 'IS_NOT',
      value: 'CACHEABLE',
    },
  ],
  behaviors: [
    papi.behaviors.downstreamCache {
      behavior: 'BUST',
    },
  ],
}
