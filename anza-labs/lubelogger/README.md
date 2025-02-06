# lubelogger

![Version: 0.5.10](https://img.shields.io/badge/Version-0.5.10-informational?style=flat) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat) ![AppVersion: v1.4.4](https://img.shields.io/badge/AppVersion-v1.4.4-informational?style=flat)

_LubeLogger_ is a web-based vehicle maintenance and fuel mileage tracker

**Homepage:** <https://lubelogger.com>

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| Mateusz Urbanek | <matueusz.urbanek.98@gmail.com> | <http://linkedin.com/in/urbanekmateusz> |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` | Affinity settings for the pods. |
| autoscaling.enabled | bool | `false` | Specifies whether autoscaling is enabled. |
| autoscaling.maxReplicas | int | `3` | Maximum number of replicas for autoscaling. |
| autoscaling.minReplicas | int | `1` | Minimum number of replicas for autoscaling. |
| autoscaling.targetCPUUtilizationPercentage | int | `80` | Target CPU utilization percentage for autoscaling. |
| autoscaling.targetMemoryUtilizationPercentage | int | `80` | Target memory utilization percentage for autoscaling. |
| config.LANG | string | `"en_US.UTF-8"` | Locale and Language Settings, this will affect how numbers, currencies, and dates are  formatted. |
| config.LC_ALL | string | `"en_US.UTF-8"` | Same as above. Note that some languages don't have UTF-8 encodings. |
| config.LOGLEVEL | string | `"Information"` | Specifies the level of logs. Valid levels are `Trace`, `Debug`, `Information`,  `Warning`, `Error`, `Critical` and `None`. Learn more at: https://learn.microsoft.com/en-us/aspnet/core/fundamentals/logging/ |
| config.translations | list | `["https://raw.githubusercontent.com/hargata/lubelog_translations/main/Europe/pl_PL.json"]` | Translations defines a list of URLs from which translation files will be fetched. These URLs point to JSON files containing translations for different languages or regions. The files will be downloaded by the init container and stored in the appropriate directory. |
| config.userConfig.AllowedHosts | string | `"*"` | Specifies allowed hosts for the application (use "*" to allow all hosts). |
| config.userConfig.DefaultTab | int | `8` | Sets the default tab to be shown when the application starts. |
| config.userConfig.EnableAuth | bool | `true` | Enables or disables authentication for the application. |
| config.userConfig.EnableAutoOdometerInsert | bool | `false` | Automatically inserts odometer readings based on previous data. |
| config.userConfig.EnableAutoReminderRefresh | bool | `false` | Automatically refreshes reminders without manual intervention. |
| config.userConfig.EnableCsvImports | bool | `true` | Enables the ability to import data from CSV files. |
| config.userConfig.EnableExtraFieldColumns | bool | `false` | Enables additional columns for extra field entries. |
| config.userConfig.EnableShopSupplies | bool | `false` | Enables tracking of shop supplies in transactions. |
| config.userConfig.HideSoldVehicles | bool | `false` | Hides vehicles marked as sold from the display. |
| config.userConfig.HideZero | bool | `false` | Determines whether zero values should be hidden in the UI. |
| config.userConfig.Logging.LogLevel."Microsoft.AspNetCore" | string | `"Warning"` | Sets the log level for Microsoft.AspNetCore-related components. Valid levels are `Trace`, `Debug`, `Information`, `Warning`, `Error`, `Critical` and `None`. Learn more at: https://learn.microsoft.com/en-us/aspnet/core/fundamentals/logging/ |
| config.userConfig.Logging.LogLevel.Default | string | `"Information"` | Specifies the default log level for all components. Valid levels are `Trace`, `Debug`, `Information`, `Warning`, `Error`, `Critical` and `None`. Learn more at: https://learn.microsoft.com/en-us/aspnet/core/fundamentals/logging/ |
| config.userConfig.PreferredGasMileageUnit | string | `""` | Specifies the preferred unit for gas mileage. |
| config.userConfig.PreferredGasUnit | string | `""` | Specifies the preferred unit for gas volume. |
| config.userConfig.UseDarkMode | bool | `false` | Enables or disables dark mode in the user interface. |
| config.userConfig.UseDescending | bool | `false` | Determines if lists are ordered in descending order by default. |
| config.userConfig.UseMPG | bool | `true` | Configures whether to use miles per gallon (MPG) as the fuel economy unit. |
| config.userConfig.UseMarkDownOnSavedNotes | bool | `false` | Allows saved notes to support markdown formatting. |
| config.userConfig.UseThreeDecimalGasCost | bool | `true` | Enables displaying gas costs with three decimal places for accuracy. |
| config.userConfig.UseUKMPG | bool | `false` | Uses UK miles per gallon (UK MPG) as the fuel economy unit. |
| config.userConfig.UserColumnPreferences | list | `[]` | Stores user preferences for column visibility. |
| config.userConfig.UserLanguage | string | `"en_US"` | Defines the user's language preference (e.g., "en_US"). |
| config.userConfig.UserNameHash | string | `"8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918"` | Stores a hashed version of the user's username. It is sha256, and can be created using one the following commands: `python3 -c 'import hashlib; print(hashlib.sha256("admin".encode("utf-8")).hexdigest())'` |
| config.userConfig.UserPasswordHash | string | `"5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8"` | Stores a hashed version of the user's password. It is sha256, and can be created using one the following commands: `python3 -c 'import hashlib; print(hashlib.sha256("password".encode("utf-8")).hexdigest())'` |
| config.userConfig.VisibleTabs | list | `[0,1,4,2,3,6,5,8]` | Specifies which tabs are visible in the user interface. |
| curl.image.pullPolicy | string | `"IfNotPresent"` | Image pull policy. |
| curl.image.repository | string | `"docker.io/curlimages/curl"` | Registry and repository for the image. |
| curl.image.tag | string | `"8.12.0"` | Tag for the image. |
| fullnameOverride | string | `""` | Override for the full name. |
| image.pullPolicy | string | `"IfNotPresent"` | Image pull policy. |
| image.repository | string | `"ghcr.io/hargata/lubelogger"` | Registry and repository for the lubelogger image. |
| image.tag | string | `"v1.4.4"` | Tag for the image. |
| imagePullSecrets | list | `[]` | Secrets for pulling images. |
| ingress.annotations | object | `{}` | Annotations to add to the ingress. |
| ingress.className | string | `""` | Ingress class name. |
| ingress.enabled | bool | `false` | Specifies whether ingress should be enabled. |
| ingress.hosts | list | `[{"host":"lubelog.example.local","paths":[{"path":"/","pathType":"ImplementationSpecific"}]}]` | List of ingress hosts. |
| ingress.tls | list | `[]` | List of TLS configurations for the ingress. |
| livenessProbe.httpGet | object | `{"path":"/","port":"http"}` | Liveness probe configuration. |
| nameOverride | string | `""` | Override for the name. |
| nodeSelector | object | `{}` | Node selector for the pods. |
| persistence.data.accessMode | string | `"ReadWriteOnce"` | Access mode for the PVC. |
| persistence.data.enabled | bool | `false` | Enable/disable PVC creation for data. |
| persistence.data.existingClaim | string | `""` | Use an existing PVC if defined, otherwise create one. |
| persistence.data.size | string | `"10Gi"` | Storage size for the PVC. |
| persistence.data.storageClass | string | `""` | Specify the StorageClass (if required). |
| persistence.documents.accessMode | string | `"ReadWriteOnce"` | Access mode for the PVC. |
| persistence.documents.enabled | bool | `true` | Enable/disable PVC creation for documents. |
| persistence.documents.existingClaim | string | `""` | Use an existing PVC if defined, otherwise create one. |
| persistence.documents.size | string | `"10Gi"` | Storage size for the PVC. |
| persistence.documents.storageClass | string | `""` | Specify the StorageClass (if required). |
| persistence.images.accessMode | string | `"ReadWriteOnce"` | Access mode for the PVC. |
| persistence.images.enabled | bool | `true` | Enable/disable PVC creation for images. |
| persistence.images.existingClaim | string | `""` | Use an existing PVC if defined, otherwise create one. |
| persistence.images.size | string | `"10Gi"` | Storage size for the PVC. |
| persistence.images.storageClass | string | `""` | Specify the StorageClass (if required). |
| podAnnotations | object | `{}` | Annotations to be added to the pods. |
| podLabels | object | `{}` | Labels to be added to the pods. |
| podSecurityContext | object | `{}` |  |
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
| upgradeStrategy.type | string | `"Recreate"` | The update strategy type for the deployment. Options: "Recreate" or "RollingUpdate". |

