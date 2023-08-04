local papi = import 'papi/Fresca/latest.libsonnet';
papi.rule {
  name: 'Adaptive Acceleration',
  criteria: [
    papi.criteria.fileExtension {
      matchCaseSensitive: false,
      matchOperator: 'IS_NOT_ONE_OF',
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
      enableBrotliCompression: true,
      enableForNoncacheable: true,
      enablePreconnect: true,
      enablePush: false,
      enableRo: false,
      preloadEnable: true,
      source: 'mPulse',
    },
  ],
}
