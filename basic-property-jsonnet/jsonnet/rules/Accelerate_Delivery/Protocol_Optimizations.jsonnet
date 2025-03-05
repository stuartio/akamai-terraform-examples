local papi = import 'papi/Fresca/latest.libsonnet';
papi.rule {
  name: 'Protocol Optimizations',
  comments: 'Serve your website using modern and fast protocols.',
  behaviors: [
    papi.behaviors.http2,
    papi.behaviors.allowTransferEncoding {
      enabled: true,
    },
    papi.behaviors.enhancedAkamaiProtocol,
  ],
}
