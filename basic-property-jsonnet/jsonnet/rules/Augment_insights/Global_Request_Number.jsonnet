local papi = import 'papi/Fresca/latest.libsonnet';
papi.rule {
  name: 'Global Request Number',
  behaviors: [
    papi.behaviors.globalRequestNumber {
      headerName: 'Akamai-GRN',
      outputOption: 'RESPONSE_HEADER',
    },
  ],
}
