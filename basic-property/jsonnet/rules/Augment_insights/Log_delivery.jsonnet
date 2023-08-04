local papi = import 'papi/Fresca/latest.libsonnet';
papi.rule {
  name: 'Log delivery',
  comments: |||
    Specify the level of detail you want to be logged in your Log Delivery
    Service reports. Log User-Agent Header to obtain detailed information in the
    Traffic by Browser and OS report.
  |||,
}
