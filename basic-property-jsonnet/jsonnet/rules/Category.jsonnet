local papi = import 'papi/Fresca/latest.libsonnet';
papi.rule {
  name: 'Category',
  uuid: '22fb4ecc-efe5-47ef-8994-628ad41a7299',
  children: [
    // import 'Category/Edge.jsonnet',
    import 'Category/Parent.jsonnet',
  ],
}
