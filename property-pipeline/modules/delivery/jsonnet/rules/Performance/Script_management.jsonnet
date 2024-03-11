local papi = import 'papi/Fresca/latest.libsonnet';
papi.rule {
  name: 'Script management',
  comments: |||
    Enable Script Management to minimize performance and availability impacts
    from third-party JavaScripts.
  |||,
  behaviors: [
    papi.behaviors.scriptManagement {
      enabled: true,
      serviceworker: 'NO_SERVICE_WORKER',
    },
  ],
}
