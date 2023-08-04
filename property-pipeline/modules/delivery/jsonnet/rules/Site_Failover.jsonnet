local papi = import 'papi/Fresca/latest.libsonnet';
papi.rule {
  name: 'Site Failover',
  criteria: [
    papi.criteria.originTimeout {
      matchOperator: 'ORIGIN_TIMED_OUT',
    },
    papi.criteria.matchResponseCode {
      matchOperator: 'IS_ONE_OF',
      values: [
        '500',
        '503',
        '504',
      ],
    },
  ],
  criteriaMustSatisfy: 'any',
  behaviors: [
    papi.behaviors.failAction {
      actionType: 'RECREATED_NS',
      cpCode: {
        id: std.extVar('failover_cpcode'),
      },
      enabled: true,
      netStorageHostname: {
        cpCode: std.extVar('failover_netstorage_uploaddir'),
        downloadDomainName: std.extVar('failover_netstorage_group'),
        g2oToken: null,
      },
      netStoragePath: std.extVar('failover_netstorage_path'),
      statusCode: 503,
    },
  ],
}
