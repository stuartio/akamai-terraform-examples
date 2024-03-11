local papi = import 'papi/Fresca/latest.libsonnet';
papi.rule {
  name: 'SureRoute',
  comments: 'Serve your website using modern and fast protocols.',
  behaviors: [
    papi.behaviors.sureRoute {
      customMap: std.extVar('sureroute_map'),
      enableCustomKey: false,
      enabled: true,
      forceSslForward: false,
      raceStatTtl: '30m',
      testObjectUrl: '/akamai/sureroute-test-object.html',
      toHostStatus: 'INCOMING_HH',
      type: 'CUSTOM_MAP',
    },
  ],
}
