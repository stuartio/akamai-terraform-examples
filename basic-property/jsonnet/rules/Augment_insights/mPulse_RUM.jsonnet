local papi = import 'papi/Fresca/latest.libsonnet';
papi.rule {
  name: 'mPulse RUM',
  comments: 'Collect and analyze real-user data to monitor the performance of your website.',
  behaviors: [
    papi.behaviors.mPulse {
      apiKey: '',
      bufferSize: '',
      configOverride: '',
      enabled: true,
      loaderVersion: 'LATEST',
      requirePci: false,
    },
  ],
}
