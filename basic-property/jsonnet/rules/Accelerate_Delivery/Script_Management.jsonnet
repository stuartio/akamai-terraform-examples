local papi = import 'papi/Fresca/latest.libsonnet';
papi.rule {
  name: 'Script Management',
  behaviors: [
    papi.behaviors.scriptManagement {
      enabled: true,
      serviceworker: 'NO_SERVICE_WORKER',
    },
  ],
}
