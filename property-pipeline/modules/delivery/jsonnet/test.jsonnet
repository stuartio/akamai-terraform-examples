local papi = import 'papi/Fresca/latest.libsonnet';
{
    rules: papi.root {
        behaviors: [
        papi.behaviors.prefetch
        ]
    }
}