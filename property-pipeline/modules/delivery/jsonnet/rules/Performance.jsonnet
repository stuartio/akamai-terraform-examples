local papi = import 'papi/Fresca/latest.libsonnet';
papi.rule {
  name: 'Performance',
  comments: |||
    Control the settings related to improving the performance of delivering
    objects to your users.
  |||,
  behaviors: [
    papi.behaviors.enhancedAkamaiProtocol,
  ],
  children: [
    import 'Performance/Compressible_objects.jsonnet',
    import 'Performance/Timeouts.jsonnet',
    import 'Performance/HTTP2.jsonnet',
    import 'Performance/SureRoute.jsonnet',
    import 'Performance/Prefetching.jsonnet',
    import 'Performance/Adaptive_acceleration.jsonnet',
    import 'Performance/Resource_Optimizer.jsonnet',
    import 'Performance/Brotli_Support.jsonnet',
    import 'Performance/mPulse.jsonnet',
    import 'Performance/Script_management.jsonnet',
    import 'Performance/Adaptive_Image_Compression.jsonnet',
    import 'Performance/Device_Characterization.jsonnet',
  ],
}
