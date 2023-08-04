local papi = import 'papi/Fresca/latest.libsonnet';
papi.rule {
  name: 'Custom Field',
  criteria: [
    papi.criteria.metadataStage {
      matchOperator: 'IS',
      value: 'client-done',
    },
  ],
  behaviors: [
    papi.behaviors.logCustom {
      customLogField: '{{user.PMUSER_LOG_CUSTOM_FIELD}}',
      logCustomLogField: true,
    },
  ],
}
