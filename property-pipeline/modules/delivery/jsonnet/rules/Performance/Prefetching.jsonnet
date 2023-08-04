local papi = import 'papi/Fresca/latest.libsonnet';
papi.rule {
  name: 'Prefetching',
  comments: |||
    Instruct edge servers to retrieve embedded resources before the browser
    requests them.
  |||,
  children: [
    import 'Prefetching/Prefetch.jsonnet',
    import 'Prefetching/Prefetchable_objects.jsonnet',
  ],
}
