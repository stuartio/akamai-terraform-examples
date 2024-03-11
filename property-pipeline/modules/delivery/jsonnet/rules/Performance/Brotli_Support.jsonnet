local papi = import 'papi/Fresca/latest.libsonnet';
papi.rule {
  name: 'Brotli Support',
  criteria: [
    papi.criteria.fileExtension {
      matchCaseSensitive: false,
      matchOperator: 'IS_ONE_OF',
      values: [
        'js',
        'css',
        'svg',
      ],
    },
  ],
  behaviors: [
    papi.behaviors.brotli {
      enabled: true,
    },
  ],
}
