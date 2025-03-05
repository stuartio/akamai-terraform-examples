local papi = import 'papi/Fresca/latest.libsonnet';
papi.rule {
  name: 'Traffic reporting',
  comments: |||
    Identify your main traffic segments so you can zoom in your traffic
    statistics like hits, bandwidth, offload, response codes, and errors.
  |||,
  behaviors: [
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
}
