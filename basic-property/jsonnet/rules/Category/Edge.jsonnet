local papi = import 'papi/Fresca/latest.libsonnet';
papi.rule {
  name: 'Edge',
  uuid: 'e94a5aea-1a78-4a4b-aa18-f3ef365a5214',
  behaviors: [
    papi.behaviors.advanced {
      description: 'Assign PMUSER_CATEGORY from NIM_IG_RULE_NAME_ACTUAL',
      xml: '<assign:variable>\n    <name>PMUSER_CATEGORY</name>\n    <value>%(NIM_IG_RULE_NAME_ACTUAL)</value>\n</assign:variable>',
    },
  ],
}
