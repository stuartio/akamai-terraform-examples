local papi = import 'papi/Fresca/latest.libsonnet';
papi.rule {
  name: 'Adaptive acceleration',
  comments: |||
    Automatically and continuously apply performance optimizations to your
    website using machine learning.
  |||,
  behaviors: [
    papi.behaviors.adaptiveAcceleration {
      enablePreconnect: true,
      enablePush: true,
      enableRo: false,
      preloadEnable: true,
      source: 'mPulse',
    },
  ],
}
