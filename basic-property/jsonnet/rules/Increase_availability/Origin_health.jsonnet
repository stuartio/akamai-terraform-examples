local papi = import 'papi/Fresca/latest.libsonnet';
papi.rule {
  name: 'Origin health',
  comments: |||
    Monitor the health of your origin by tracking unsuccessful IP connection
    attempts.
  |||,
  behaviors: [
    papi.behaviors.healthDetection {
      maximumReconnects: 3,
      retryCount: 3,
      retryInterval: '10s',
    },
  ],
}
