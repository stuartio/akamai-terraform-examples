local papi = import 'papi/Fresca/latest.libsonnet';
papi.rule {
  name: 'HTTP/3',
  criteria: [
    papi.criteria.hostname {
      matchOperator: 'IS_ONE_OF',
      values: [
        '*',
      ],
    },
  ],
  behaviors: [
    papi.behaviors.http3 {
      enable: true,
    },
  ],
}
