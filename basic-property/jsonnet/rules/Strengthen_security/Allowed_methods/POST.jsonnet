local papi = import 'papi/Fresca/latest.libsonnet';
papi.rule {
  name: 'POST',
  comments: 'Allow use of the POST HTTP request method.',
  behaviors: [
    papi.behaviors.allowPost {
      allowWithoutContentLength: false,
      enabled: true,
    },
  ],
}
