local papi = import 'papi/Fresca/latest.libsonnet';
papi.rule {
  name: 'PATCH',
  comments: 'Allow use of the PATCH HTTP request method.',
  behaviors: [
    papi.behaviors.allowPatch {
      enabled: false,
    },
  ],
}
