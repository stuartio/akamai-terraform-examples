local papi = import 'papi/Fresca/latest.libsonnet';
papi.rule {
  name: 'Parent',
  criteria: [
    papi.criteria.requestType {
      matchOperator: 'IS_NOT',
      value: 'CLIENT_REQ',
    },
  ],
  behaviors: [
    papi.behaviors.modifyOutgoingRequestHeader {
      action: 'ADD',
      customHeaderName: 'X-Parent-Category',
      headerValue: '{{user.PMUSER_CATEGORY}}',
      standardAddHeaderName: 'OTHER',
    },
  ],
}
