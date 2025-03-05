local papi = import 'papi/Fresca/latest.libsonnet';
papi.rule {
  name: 'PUT',
  comments: 'Allow use of the PUT HTTP request method.',
  behaviors: [
    papi.behaviors.allowPut {
      enabled: false,
    },
  ],
}
