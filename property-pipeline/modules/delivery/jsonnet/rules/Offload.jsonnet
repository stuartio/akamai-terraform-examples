local papi = import 'papi/Fresca/latest.libsonnet';
papi.rule {
  name: 'Offload',
  comments: |||
    Control the settings related to caching content at the edge and in the
    browser. As a result, fewer requests go to your origin, fewer bytes leave
    your data centers, and your assets are closer to your users.
  |||,
  behaviors: [
    papi.behaviors.caching {
      behavior: 'NO_STORE',
    },
    papi.behaviors.removeVary {
      enabled: true,
    },
    papi.behaviors.cacheError {
      enabled: true,
      preserveStale: true,
      ttl: '10s',
    },
    papi.behaviors.cacheKeyQueryParams {
      behavior: 'INCLUDE_ALL_ALPHABETIZE_ORDER',
    },
    papi.behaviors.prefreshCache {
      enabled: true,
      prefreshval: 90,
    },
    papi.behaviors.downstreamCache {
      allowBehavior: 'LESSER',
      behavior: 'ALLOW',
      sendHeaders: 'CACHE_CONTROL',
      sendPrivate: false,
    },
    papi.behaviors.returnCacheStatus {
      responseHeaderName: 'Akamai-Cache-Status',
    },
  ],
  children: [
    import 'Offload/CSS_and_JavaScript.jsonnet',
    import 'Offload/Fonts.jsonnet',
    import 'Offload/Images.jsonnet',
    import 'Offload/Files.jsonnet',
    import 'Offload/Other_static_objects.jsonnet',
    import 'Offload/HTML_pages.jsonnet',
    import 'Offload/Redirects.jsonnet',
    import 'Offload/Uncacheable_objects.jsonnet',
    import 'Offload/Cache_Tag_Visibility.jsonnet',
  ],
}
