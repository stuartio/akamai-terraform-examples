local papi = import 'papi/Fresca/latest.libsonnet';
papi.rule {
  name: 'Prefetching',
  children: [
    import 'Prefetching/Prefetching_objects.jsonnet',
    import 'Prefetching/Prefetchable_objects.jsonnet',
  ],
}
