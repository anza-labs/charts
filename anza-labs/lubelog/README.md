# lubelog

![Version: 0.1.2](https://img.shields.io/badge/Version-0.1.2-informational?style=flat) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat)

LubeLogger is a web-based vehicle maintenance and fuel mileage tracker

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` | Affinity settings for the pods. |
| autoscaling.enabled | bool | `false` | Specifies whether autoscaling is enabled. |
| autoscaling.maxReplicas | int | `3` | Maximum number of replicas for autoscaling. |
| autoscaling.minReplicas | int | `1` | Minimum number of replicas for autoscaling. |
| autoscaling.targetCPUUtilizationPercentage | int | `80` | Target CPU utilization percentage for autoscaling. |
| config.LANG | string | `"en_US.UTF-8"` | Locale and Language Settings, this will affect how numbers, currencies, and dates are  formatted. |
| config.LC_ALL | string | `"en_US.UTF-8"` | Same as above. Note that some languages don't have UTF-8 encodings. |
| config.LOGLEVEL | string | `"Information"` | Specifies the level of logs. Valid levels are `Trace`, `Debug`, `Information`,  `Warning`, `Error`, `Critical` and `None`. Learn more at: https://learn.microsoft.com/en-us/aspnet/core/fundamentals/logging/ |
| fullnameOverride | string | `""` | Override for the full name. |
| image.pullPolicy | string | `"IfNotPresent"` | Image pull policy. |
| image.repository | string | `"ghcr.io/hargata/lubelogger"` | Registry and repository for the image. |
| image.tag | string | `"v1.3.5"` | Tag for the image. |
| imagePullSecrets | list | `[]` | Secrets for pulling images. |
| ingress.annotations | object | `{}` | Annotations to add to the ingress. |
| ingress.className | string | `""` | Ingress class name. |
| ingress.enabled | bool | `false` | Specifies whether ingress should be enabled. |
| ingress.hosts | list | `[{"host":"lubelog.example.local","paths":[{"path":"/","pathType":"ImplementationSpecific"}]}]` | List of ingress hosts. |
| ingress.tls | list | `[]` | List of TLS configurations for the ingress. |
| livenessProbe.httpGet | object | `{"path":"/","port":"http"}` | Liveness probe configuration. |
| nameOverride | string | `""` | Override for the name. |
| nodeSelector | object | `{}` | Node selector for the pods. |
| podAnnotations | object | `{}` | Annotations to be added to the pods. |
| podLabels | object | `{}` | Labels to be added to the pods. |
| podSecurityContext | object | `{}` |  |
| postgres | object | `{"connect":false,"create":false,"database":"postgres","host":"postgres","keyRef":"POSTGRES_CONNECTION","name":"","password":"postgres","port":5432,"user":"postgres"}` | PostgreSQL connection details. |
| postgres.connect | bool | `false` | Defines if the LubeLogger should connect to the Postgres backend. It has no effect when `postgres.create=true`. |
| postgres.create | bool | `false` | Defines if the secret with Postgres connection details should be created. |
| postgres.database | string | `"postgres"` | Database name. |
| postgres.host | string | `"postgres"` | Host of the Postgres database. |
| postgres.keyRef | string | `"POSTGRES_CONNECTION"` | Defines the key under which postgres connection string can be found. It uses Npgsql connection format. |
| postgres.name | string | `""` | Specifies name of a secret used to configure the LubeLogger's Postgres backend. If not filled, uses full name. |
| postgres.password | string | `"postgres"` | Password for the user used to connect to the Postgres database. |
| postgres.port | int | `5432` | Port of the Postgres database. |
| postgres.user | string | `"postgres"` | User used to connect to the Postgres database. |
| readinessProbe.httpGet | object | `{"path":"/","port":"http"}` | Readiness probe configuration. |
| replicaCount | int | `1` | Number of replicas for the deployment. |
| resources | object | `{}` |  |
| secret.create | bool | `true` | Specifies whether a secret should be created. |
| secret.emailFrom | string | `""` | Email from address for the secret. |
| secret.emailServer | string | `""` | Email server for the secret. |
| secret.name | string | `""` | Specifies name of a secret used to configure the LubeLogger's mail connection. If not filled, uses full name. |
| secret.password | string | `""` | Password for the email server. |
| secret.port | int | `587` | Port for the email server. |
| secret.username | string | `""` | Username for the email server. |
| securityContext | object | `{}` |  |
| service.port | int | `80` | Service port. |
| service.type | string | `"ClusterIP"` | Service type. |
| serviceAccount.annotations | object | `{}` | Annotations to add to the service account. |
| serviceAccount.automount | bool | `true` | Automatically mount a ServiceAccount's API credentials. |
| serviceAccount.create | bool | `true` | Specifies whether a service account should be created. |
| serviceAccount.name | string | `""` | The name of the service account to use. If not set and create is true, a name is generated using the fullname template. |
| tolerations | list | `[]` | Tolerations for the pods. |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.14.2](https://github.com/norwoodj/helm-docs/releases/v1.14.2)
