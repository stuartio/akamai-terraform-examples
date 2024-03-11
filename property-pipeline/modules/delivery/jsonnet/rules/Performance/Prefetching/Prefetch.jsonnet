local papi = import 'papi/Fresca/latest.libsonnet';
papi.rule {
  name: 'Prefetch',
  comments: 'Define for which HTML pages prefetching should be enabled.',
  criteria: [
    papi.criteria.fileExtension {
      matchCaseSensitive: false,
      matchOperator: 'IS_ONE_OF',
      values: [
        'EMPTY_STRING',
      ],
    },
  ],
  behaviors: [
    papi.behaviors.prefetch {
      enabled: true,
    },
  ],
  children: [
    import 'Prefetch/Bots.jsonnet',
  ],
}
