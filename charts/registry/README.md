# registry

![Version: 1.0.0](https://img.shields.io/badge/Version-1.0.0-informational?style=flat) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat) ![AppVersion: 3.0.0](https://img.shields.io/badge/AppVersion-3.0.0-informational?style=flat)

The Registry is a stateless, highly scalable server side application that
stores and lets you distribute container images and other content.

**Homepage:** <https://distribution.github.io/distribution/>

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| shanduur | <maturb@proton.me> | <http://linkedin.com/in/urbanekmateusz> |

## Source Code

* <https://github.com/distribution/distribution>

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` | Affinity settings for the pods. |
| autoscaling.enabled | bool | `false` | Specifies whether autoscaling is enabled. |
| autoscaling.maxReplicas | int | `3` | Maximum number of replicas for autoscaling. |
| autoscaling.minReplicas | int | `1` | Minimum number of replicas for autoscaling. |
| autoscaling.targetCPUUtilizationPercentage | int | `80` | Target CPU utilization percentage for autoscaling. |
| autoscaling.targetMemoryUtilizationPercentage | int | `80` | Target memory utilization percentage for autoscaling. |
| configs.registry.create | bool | `true` | Specifies whether a config map should be created. |
| configs.registry.name | string | `""` | Specifies name of a config map used to configure the registry. If not filled, uses full name. |
| configs.telemetry.create | bool | `true` | Specifies whether a config map should be created. |
| configs.telemetry.name | string | `""` | Specifies name of a config map used to configure the registry. If not filled, uses full name. |
| configs.telemetry.otel | object | `{"OTEL_TRACES_EXPORTER":"none"}` | OpenTelemetry SDK environment variables. https://opentelemetry.io/docs/specs/otel/configuration/sdk-environment-variables/ |
| fullnameOverride | string | `""` | Override for the full name. |
| image.pullPolicy | string | `"IfNotPresent"` | Image pull policy. |
| image.repository | string | `"docker.io/library/registry"` | Registry and repository for the registry image. |
| image.tag | string | `"3.0.0"` | Tag for the image. |
| imagePullSecrets | list | `[]` | Secrets for pulling images. |
| ingress.annotations | object | `{}` | Annotations to add to the ingress. |
| ingress.className | string | `""` | Ingress class name. |
| ingress.enabled | bool | `false` | Specifies whether ingress should be enabled. |
| ingress.hosts | list | `[{"host":"registry.example.local","paths":[{"path":"/","pathType":"ImplementationSpecific"}]}]` | List of ingress hosts. |
| ingress.tls | list | `[]` | List of TLS configurations for the ingress. |
| livenessProbe.httpGet | object | `{"path":"/debug/health","port":"debug"}` | Liveness probe configuration. |
| nameOverride | string | `""` | Override for the name. |
| nodeSelector | object | `{}` | Node selector for the pods. |
| podAnnotations | object | `{}` | Annotations to be added to the pods. |
| podLabels | object | `{}` | Labels to be added to the pods. |
| podSecurityContext | object | `{}` |  |
| readinessProbe.httpGet | object | `{"path":"/debug/health","port":"debug"}` | Readiness probe configuration. |
| replicaCount | int | `1` | Number of replicas for the deployment. |
| resources | object | `{}` |  |
| secrets.auth.create | bool | `false` | Specifies whether a secret should be created. |
| secrets.auth.htpasswd.value | string | `""` | Directly specify the htpasswd content for basic authentication. |
| secrets.auth.htpasswd.valueFrom | object | `{"key":"htpasswd","optional":true,"secret":""}` | Reference an existing Kubernetes secret and key for htpasswd. |
| secrets.auth.name | string | `""` | Specifies name of a secret used to configure the registry. If not filled, uses full name. |
| secrets.http.create | bool | `true` | Specifies whether a secret should be created. |
| secrets.http.name | string | `""` | Specifies name of a secret used to configure the registry. If not filled, uses full name. |
| secrets.http.value | string | `"12b7a9c9-3c30-4cea-b868-f9942ab82d9a"` | Value of the shared HTTP secret. |
| secrets.storage.accessKey.value | string | `""` | Access key for the S3-compatible storage backend. |
| secrets.storage.accessKey.valueFrom | object | `{"key":"awsaccesskey","optional":false,"secretName":""}` | Reference to an existing Secret containing the access key. |
| secrets.storage.bucket.value | string | `""` | S3 bucket name where registry data will be stored. |
| secrets.storage.bucket.valueFrom | object | `{"key":"bucket","optional":false,"secretName":""}` | Reference to an existing Secret containing the bucket name. |
| secrets.storage.create | bool | `true` | Specifies whether a secret should be created. If false, you must provide an existing Secret via .name or .[*].valueFrom. |
| secrets.storage.endpoint.value | string | `""` | Endpoint for the S3-compatible storage backend (e.g. https://s3.amazonaws.com). |
| secrets.storage.endpoint.valueFrom | object | `{"key":"endpoint","optional":false,"secretName":""}` | Reference to an existing Secret containing the endpoint. |
| secrets.storage.forcePathStyle.value | bool | `true` | Whether to force path-style URLs (true = path-style, false = virtual-hosted-style). |
| secrets.storage.forcePathStyle.valueFrom | object | `{"key":"forcePathStyle","optional":true,"secretName":""}` | Reference to an existing Secret containing this value. |
| secrets.storage.name | string | `""` | Specifies name of a secret used to configure the registry. If not filled, uses full name. |
| secrets.storage.region.value | string | `""` | AWS region or equivalent region for the storage backend. |
| secrets.storage.region.valueFrom | object | `{"key":"region","optional":false,"secretName":""}` | Reference to an existing Secret containing the region. |
| secrets.storage.secretKey.value | string | `""` | Secret key for the S3-compatible storage backend. |
| secrets.storage.secretKey.valueFrom | object | `{"key":"awssecretkey","optional":false,"secretName":""}` | Reference to an existing Secret containing the secret key. |
| secrets.storage.secure.value | bool | `true` | Whether to use secure (HTTPS) connections to the storage backend. |
| secrets.storage.secure.valueFrom | object | `{"key":"secure","optional":true,"secretName":""}` | Reference to an existing Secret containing this value. |
| secrets.storage.v4Auth.value | bool | `true` | Whether to enforce AWS Signature V4 authentication. |
| secrets.storage.v4Auth.valueFrom | object | `{"key":"v4Auth","optional":true,"secretName":""}` | Reference to an existing Secret containing this value. |
| securityContext | object | `{}` |  |
| service.port | int | `5000` | Service port. |
| service.type | string | `"ClusterIP"` | Service type. |
| serviceAccount.annotations | object | `{}` | Annotations to add to the service account. |
| serviceAccount.automount | bool | `true` | Automatically mount a ServiceAccount's API credentials. |
| serviceAccount.create | bool | `true` | Specifies whether a service account should be created. |
| serviceAccount.name | string | `""` | The name of the service account to use. If not set and create is true, a name is generated using the fullname template. |
| startupProbe.httpGet | object | `{"path":"/debug/health","port":"debug"}` | Startup probe configuration. |
| tolerations | list | `[]` | Tolerations for the pods. |

