local papi = import 'papi/Fresca/latest.libsonnet';
papi.rule {
  name: 'Files',
  comments: |||
    Override the default caching behavior for files. Files containing Personal
    Identified Information (PII) should require Edge authentication or not be
    cached at all.
  |||,
  criteria: [
    papi.criteria.fileExtension {
      matchCaseSensitive: false,
      matchOperator: 'IS_ONE_OF',
      values: [
        'doc',
        'docx',
        'odt',
      ],
    },
  ],
  criteriaMustSatisfy: 'any',
  behaviors: [
    papi.behaviors.caching {
      behavior: 'MAX_AGE',
      mustRevalidate: false,
      ttl: '8d',
    },
  ],
}
