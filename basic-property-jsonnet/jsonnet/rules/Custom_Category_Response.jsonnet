local papi = import 'papi/Fresca/latest.libsonnet';
papi.rule {
  name: 'Custom Category Response',
  criteria: [
    papi.criteria.path {
      matchCaseSensitive: false,
      matchOperator: 'MATCHES_ONE_OF',
      normalize: false,
      values: [
        '/category',
      ],
    },
  ],
  behaviors: [
    papi.behaviors.constructResponse {
      body: 'Your category is: {{user.PMUSER_CATEGORY}}',
      enabled: true,
      forceEviction: true,
      ignorePurge: true,
      responseCode: 200,
    },
    papi.behaviors.modifyOutgoingResponseHeader {
      action: 'MODIFY',
      avoidDuplicateHeaders: false,
      newHeaderValue: 'text/plain',
      standardModifyHeaderName: 'CONTENT_TYPE',
    },
  ],
}
