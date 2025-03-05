local papi = import 'papi/Fresca/latest.libsonnet';
papi.rule {
  name: 'HSTS',
  comments: 'Require all browsers to connect to your site using HTTPS.',
  behaviors: [
    papi.behaviors.httpStrictTransportSecurity {
      enable: false,
    },
  ],
}
