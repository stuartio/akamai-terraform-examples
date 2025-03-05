local papi = import 'papi/Fresca/latest.libsonnet';
papi.rule {
  name: 'DELETE',
  comments: 'Allow use of the DELETE HTTP request method.',
  behaviors: [
    papi.behaviors.allowDelete {
      enabled: false,
    },
  ],
}
