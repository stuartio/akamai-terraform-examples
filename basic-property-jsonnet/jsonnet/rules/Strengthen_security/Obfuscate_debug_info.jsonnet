local papi = import 'papi/Fresca/latest.libsonnet';
papi.rule {
  name: 'Obfuscate debug info',
  comments: |||
    Do not expose backend information unless the request contains the Pragma
    debug headers
  |||,
  behaviors: [
    papi.behaviors.cacheTagVisible {
      behavior: 'PRAGMA_HEADER',
    },
  ],
}
