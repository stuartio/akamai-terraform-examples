local papi = import 'papi/Fresca/latest.libsonnet';
papi.rule {
  name: 'HTTP/2',
  comments: 'Serve your website using modern and fast protocols.',
  criteria: [
    papi.criteria.hostname {
      matchOperator: 'IS_ONE_OF',
      values: [
        '*',
      ],
    },
  ],
  behaviors: [
    papi.behaviors.http2,
    papi.behaviors.allowTransferEncoding {
      enabled: true,
    },
  ],
}
