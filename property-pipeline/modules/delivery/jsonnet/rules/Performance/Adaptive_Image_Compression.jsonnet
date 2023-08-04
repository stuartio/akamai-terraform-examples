local papi = import 'papi/Fresca/latest.libsonnet';
papi.rule {
  name: 'Adaptive Image Compression',
  comments: 'A default AIC behavior with a match on JPEG-compatible file extensions.',
  criteria: [
    papi.criteria.fileExtension {
      matchCaseSensitive: false,
      matchOperator: 'IS_ONE_OF',
      values: [
        'jpg',
        'jpeg',
        'jpe',
        'jif',
        'jfif',
        'jfi',
      ],
    },
  ],
  behaviors: [
    papi.behaviors.adaptiveImageCompression {
      compressMobile: true,
      compressStandard: true,
      tier1MobileCompressionMethod: 'BYPASS',
      tier1StandardCompressionMethod: 'BYPASS',
      tier2MobileCompressionMethod: 'COMPRESS',
      tier2MobileCompressionValue: 60,
      tier2StandardCompressionMethod: 'BYPASS',
      tier3MobileCompressionMethod: 'COMPRESS',
      tier3MobileCompressionValue: 40,
      tier3StandardCompressionMethod: 'COMPRESS',
      tier3StandardCompressionValue: 40,
    },
  ],
}
