local papi = import 'papi/Fresca/latest.libsonnet';
papi.rule {
  name: 'Redirects',
  comments: |||
    Configure caching for HTTP redirects. The redirect is cached for the same
    TTL as a 200 response when this feature is enabled
  |||,
  behaviors: [
    papi.behaviors.cacheRedirect {
      enabled: 'false',
    },
    papi.behaviors.chaseRedirects {
      enabled: true,
      limit: '4',
      serve404: true,
    },
  ],
}
