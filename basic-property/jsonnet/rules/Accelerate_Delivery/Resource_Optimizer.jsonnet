local papi = import 'papi/Fresca/latest.libsonnet';
papi.rule {
  name: 'Resource Optimizer',
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
    papi.behaviors.adaptiveAcceleration {
      abLogic: 'DISABLED',
      enableBrotliCompression: false,
      enablePreconnect: false,
      enablePush: false,
      enableRo: true,
      preloadEnable: false,
      source: 'mPulse',
    },
  ],
}
