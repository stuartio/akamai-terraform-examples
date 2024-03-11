local papi = import 'papi/Fresca/latest.libsonnet';
papi.rule {
  name: 'Siteshield',
  behaviors: [
    papi.behaviors.siteShield {
      ssmap: {
        value: std.extVar('siteshield_map'),
      },
    },
  ],
}
