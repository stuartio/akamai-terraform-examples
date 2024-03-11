local papi = import 'papi/Fresca/latest.libsonnet';
papi.rule {
  name: 'Security',
  children: [
    import 'Security/Siteshield.jsonnet',
    import 'Security/Allowed_methods.jsonnet',
    import 'Security/Obfuscate_backend_info.jsonnet',
    import 'Security/HSTS.jsonnet',
    import 'Security/CORS.jsonnet',
  ],
}
