local papi = import 'papi/Fresca/latest.libsonnet';
{
  rules: papi.root {
    name: 'default',
    comments: |||
      The Default Rule template contains all the necessary and recommended
      features. Rules are evaluated from top to bottom and the last matching rule
      wins.
    |||,
    variables: import 'pmvariables.jsonnet',
    behaviors: [
      papi.behaviors.origin {
        cacheKeyHostname: 'REQUEST_HOST_HEADER',
        compress: true,
        enableTrueClientIp: true,
        forwardHostHeader: 'ORIGIN_HOSTNAME',
        hostname: 'origin2.stuartmacleod.net',
        httpPort: 80,
        httpsPort: 443,
        ipVersion: 'IPV4',
        originSni: true,
        originType: 'CUSTOMER',
        trueClientIpClientSetting: false,
        trueClientIpHeader: 'True-Client-IP',
        verificationMode: 'PLATFORM_SETTINGS',
      },
      papi.behaviors.autoDomainValidation,
      papi.behaviors.cpCode {
        value: {
          createdDate: 1548068489000,
          description: 'smacleod-cp1',
          id: 814598,
          name: 'smacleod-cp1',
          products: [
            'Fresca',
            'Site_Accel',
          ],
        },
      },
    ],
    children: [
      import 'rules/Augment_insights.jsonnet',
      import 'rules/Accelerate_Delivery.jsonnet',
      import 'rules/Offload_origin.jsonnet',
      import 'rules/Strengthen_security.jsonnet',
      import 'rules/Increase_availability.jsonnet',
      import 'rules/Minimize_payload.jsonnet',
      // import 'rules/Category.jsonnet',
      import 'rules/Custom_Category_Response.jsonnet',
    ],
  },
}
