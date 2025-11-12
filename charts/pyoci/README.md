# pyoci

![Version: 1.0.0](https://img.shields.io/badge/Version-1.0.0-informational?style=flat) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat) ![AppVersion: 0.1.32](https://img.shields.io/badge/AppVersion-0.1.32-informational?style=flat)

Publish and install private python packages using OCI/docker registries.

**Homepage:** <https://pyoci.com>

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| shanduur | <maturb@proton.me> | <http://linkedin.com/in/urbanekmateusz> |

## Source Code

* <https://github.com/AllexVeldman/pyoci>

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` | Affinity settings for the pods. |
| autoscaling.enabled | bool | `false` | Specifies whether autoscaling is enabled. |
| autoscaling.maxReplicas | int | `3` | Maximum number of replicas for autoscaling. |
| autoscaling.minReplicas | int | `1` | Minimum number of replicas for autoscaling. |
| autoscaling.targetCPUUtilizationPercentage | int | `80` | Target CPU utilization percentage for autoscaling. |
| autoscaling.targetMemoryUtilizationPercentage | int | `80` | Target memory utilization percentage for autoscaling. |
| config.logLevel | string | `"info"` | Log filter, defaults to info. |
| config.maxBody | int | `50000000` | Limit the maximum accepted body size in bytes when publishing packages, defaults to 50MB. |
| config.maxVersions | int | `10` | Limit how many versions (in reverse alphabetical order) to fetch filenames for when listing a package. By default PyOCI will only include the last 100 versions. To not limit the versions, set this value to 0. |
| config.subPath | string | `""` | Host PyOCI on a subpath, for example: PYOCI_PATH="/acme-corp". |
| fullnameOverride | string | `""` | Override for the full name. |
| image.pullPolicy | string | `"IfNotPresent"` | Image pull policy. |
| image.repository | string | `"ghcr.io/allexveldman/pyoci"` | pyoci and repository for the pyoci image. |
| image.tag | string | `"0.1.32"` | Tag for the image. |
| imagePullSecrets | list | `[]` | Secrets for pulling images. |
| ingress.annotations | object | `{}` | Annotations to add to the ingress. |
| ingress.className | string | `""` | Ingress class name. |
| ingress.enabled | bool | `false` | Specifies whether ingress should be enabled. |
| ingress.hosts | list | `[{"host":"pyoci.example.local","paths":[{"path":"/","pathType":"ImplementationSpecific"}]}]` | List of ingress hosts. |
| ingress.tls | list | `[]` | List of TLS configurations for the ingress. |
| nameOverride | string | `""` | Override for the name. |
| nodeSelector | object | `{}` | Node selector for the pods. |
| podAnnotations | object | `{}` | Annotations to be added to the pods. |
| podLabels | object | `{}` | Labels to be added to the pods. |
| podSecurityContext | object | `{}` |  |
| replicaCount | int | `1` | Number of replicas for the deployment. |
| resources | object | `{}` |  |
| securityContext | object | `{}` |  |
| service.port | int | `8080` | Service port. |
| service.type | string | `"ClusterIP"` | Service type. |
| serviceAccount.annotations | object | `{}` | Annotations to add to the service account. |
| serviceAccount.automount | bool | `true` | Automatically mount a ServiceAccount's API credentials. |
| serviceAccount.create | bool | `true` | Specifies whether a service account should be created. |
| serviceAccount.name | string | `""` | The name of the service account to use. If not set and create is true, a name is generated using the fullname template. |
| telemetry.create | bool | `false` | Specifies whether a secret should be created. |
| telemetry.deploymentEnvironment | string | `""` | deployment.environment attribute added to OTLP resources. |
| telemetry.name | string | `""` | Specifies name of a config map used to configure the pyoci. If not filled, uses full name. |
| telemetry.otlpAuth | string | `""` | Full Authorization header value to use when sending OTLP requests. |
| telemetry.otlpEndpoint | string | `""` | If set, forward logs, traces, and metrics to this OTLP collector endpoint every 30s. |
| tolerations | list | `[]` | Tolerations for the pods. |

