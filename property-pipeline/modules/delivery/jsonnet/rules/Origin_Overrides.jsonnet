local papi = import 'papi/Fresca/latest.libsonnet';
papi.rule {
  name: 'Origin Overrides',
  children: [
    papi.rule {
      name: hostname,
      criteria: [
        papi.criteria.hostname {
          matchOperator: 'IS_ONE_OF',
          values: [
            hostname,
          ],
        },
      ],
      behaviors: [
        papi.behaviors.origin {
          originType: 'CUSTOMER',
          hostname: 'origin-' + hostname,
          forwardHostHeader: 'REQUEST_HOST_HEADER',
          cacheKeyHostname: 'REQUEST_HOST_HEADER',
          compress: true,
          enableTrueClientIp: true,
          verificationMode: 'PLATFORM_SETTINGS',
          httpPort: 80,
          httpsPort: 443,
          trueClientIpHeader: 'True-Client-IP',
          trueClientIpClientSetting: false,
          originSni: true,
        },
      ],
    }
    for hostname in std.extVar('hostnames')
  ],
}
