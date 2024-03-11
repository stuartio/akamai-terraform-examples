local papi = import 'papi/Fresca/latest.libsonnet';
papi.rule {
  name: 'Device Characterization',
  behaviors: [
    papi.behaviors.deviceCharacteristicHeader {
      elements: [
        'IS_MOBILE',
        'IS_TABLET',
      ],
    },
  ],
}
