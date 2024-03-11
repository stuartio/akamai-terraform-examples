local papi = import 'papi/Fresca/latest.libsonnet';
papi.rule {
  name: 'Cache Tag Visibility',
  behaviors: [
    papi.behaviors.cacheTagVisible {
      behavior: 'PRAGMA_HEADER',
    },
  ],
}
