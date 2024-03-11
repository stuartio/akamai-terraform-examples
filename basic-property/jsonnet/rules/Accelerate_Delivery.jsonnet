local papi = import 'papi/Fresca/latest.libsonnet';
papi.rule {
  name: 'Accelerate Delivery',
  comments: |||
    Control the settings related to improving the performance of delivering
    objects to your users.
  |||,
  children: [
    import 'Accelerate_Delivery/Origin_connectivity.jsonnet',
    import 'Accelerate_Delivery/Protocol_Optimizations.jsonnet',
    import 'Accelerate_Delivery/HTTP3.jsonnet',
    import 'Accelerate_Delivery/Prefetching.jsonnet',
    import 'Accelerate_Delivery/mPulse.jsonnet',
    import 'Accelerate_Delivery/SureRoute.jsonnet',
    import 'Accelerate_Delivery/Adaptive_Acceleration.jsonnet',
    import 'Accelerate_Delivery/Resource_Optimizer.jsonnet',
    import 'Accelerate_Delivery/Script_Management.jsonnet',
  ],
}
