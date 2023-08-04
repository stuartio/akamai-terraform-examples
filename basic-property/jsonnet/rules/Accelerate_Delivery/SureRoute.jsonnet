local papi = import 'papi/Fresca/latest.libsonnet';
papi.rule {
  name: 'SureRoute',
  behaviors: [
    papi.behaviors.sureRoute {
      enableCustomKey: false,
      enabled: true,
      forceSslForward: false,
      raceStatTtl: '30m',
      testObjectUrl: '/akamai/testobject.html',
      toHostStatus: 'INCOMING_HH',
      type: 'PERFORMANCE',
    },
  ],
}
