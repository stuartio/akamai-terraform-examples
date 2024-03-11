local papi = import 'papi/Fresca/latest.libsonnet';
{
  rules: papi.root {
    name: 'default',
    comments: |||
      The Default Rule template contains all the necessary and recommended
      behaviors. Rules are evaluated from top to bottom and the last matching rule
      wins.
    |||,
    variables: import 'pmvariables.jsonnet',
    behaviors: [
      papi.behaviors.origin {
        cacheKeyHostname: 'REQUEST_HOST_HEADER',
        compress: true,
        enableTrueClientIp: true,
        forwardHostHeader: 'REQUEST_HOST_HEADER',
        hostname: std.extVar('origin1'),
        httpPort: 80,
        httpsPort: 443,
        originSni: true,
        originType: 'CUSTOMER',
        trueClientIpClientSetting: false,
        trueClientIpHeader: 'True-Client-IP',
        verificationMode: 'PLATFORM_SETTINGS',
      },
      papi.behaviors.cpCode {
        value: {
          id: std.extVar('cpcode1'),
        },
      },
      papi.behaviors.edgeScape {
        enabled: true,
      },
      papi.behaviors.globalRequestNumber {
        headerName: 'Akamai-GRN',
        outputOption: 'RESPONSE_HEADER',
      },
      papi.behaviors.prefetch {
        enabled: false,
      },
    ],
    children: [
      import 'rules/Origin_Overrides.jsonnet',
      import 'rules/Performance.jsonnet',
      import 'rules/Offload.jsonnet',
      import 'rules/Security.jsonnet',
      import 'rules/Log_delivery.jsonnet',
      import 'rules/Site_Failover.jsonnet',
    ],
  },
}
