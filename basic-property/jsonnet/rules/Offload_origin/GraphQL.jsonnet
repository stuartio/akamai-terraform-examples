local papi = import 'papi/Fresca/latest.libsonnet';
papi.rule {
  name: 'GraphQL',
  comments: 'Define when your GraphQL queries should be cached.',
  criteria: [
    papi.criteria.path {
      matchCaseSensitive: false,
      matchOperator: 'MATCHES_ONE_OF',
      normalize: false,
      values: [
        '/graphql',
      ],
    },
  ],
  behaviors: [
    papi.behaviors.graphqlCaching {
      enabled: false,
    },
  ],
}
