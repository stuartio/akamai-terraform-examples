local papi = import 'papi/Fresca/latest.libsonnet';
papi.rule {
  name: 'Resource Optimizer',
  comments: 'Brotli compress css, js and svg',
  criteria: [
    papi.criteria.fileExtension {
      matchCaseSensitive: false,
      matchOperator: 'IS_ONE_OF',
      values: [
        'css',
        'js',
        'svg',
      ],
    },
  ],
  behaviors: [
    papi.behaviors.adaptiveAcceleration {
      enablePreconnect: false,
      enablePush: false,
      enableRo: true,
      preloadEnable: false,
      source: 'mPulse',
    },
  ],
}
