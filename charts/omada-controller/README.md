# omada-controller

![Version: 0.1.0](https://img.shields.io/badge/Version-0.1.0-informational?style=flat) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat) ![AppVersion: 5.15.20.20](https://img.shields.io/badge/AppVersion-5.15.20.20-informational?style=flat)

TP-Link Omada Controller in Kubernetes

**Homepage:** <https://support.omadanetworks.com/product/omada-software-controller/>

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| shanduur | <maturb@proton.me> | <http://linkedin.com/in/urbanekmateusz> |

## Source Code

* <https://github.com/mbentley/docker-omada-controller>

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` | Affinity settings for the pods. |
| config.adoptV1Port | int | `29812` | Device adoption port for firmware compatible with Controller v4* (valid range: 1024-65535) |
| config.appDiscoveryPort | int | `27001` | Controller discovery port for Omada mobile app (valid range: 1024-65535) |
| config.discoveryPort | int | `29810` | Omada device discovery port (valid range: 1024-65535) |
| config.manageHttpPort | int | `8088` | Management portal HTTP port (valid range: 1024-65535) |
| config.manageHttpsPort | int | `8043` | Management portal HTTPS port (valid range: 1024-65535) |
| config.managerV1Port | int | `29811` | Device management port for Controller v4* (valid range: 1024-65535) |
| config.managerV2Port | int | `29814` | Device management port for Controller v5* (valid range: 1024-65535) |
| config.pgid | int | `508` | Group ID for the `omada` process |
| config.pgroup | string | `"omada"` | Group name for the `omada` process |
| config.portalHttpPort | int | `8888` | User portal HTTP port (valid range: 1024-65535) |
| config.portalHttpsPort | int | `8843` | User portal HTTPS port (valid range: 1024-65535) |
| config.puid | int | `508` | User ID for the `omada` process |
| config.pusername | string | `"omada"` | Username for the `omada` process |
| config.rootless | bool | `false` | Enables rootless mode if set to `true` |
| config.rttyPort | int | `29816` | Remote terminal control port (valid range: 1024-65535) |
| config.showMongoDbLogs | bool | `false` | Outputs MongoDB logs to STDOUT |
| config.showServerLogs | bool | `true` | Outputs Omada Controller logs to STDOUT |
| config.skipUserlandKernelCheck | bool | `false` | Skips kernel/userland compatibility checks for ARM architectures |
| config.smallFiles | bool | `false` | Enables small file mode (only applicable to version 3.2) |
| config.timezone | string | `"Etc/UTC"` | Time zone to be used by the container (e.g., Etc/UTC, Europe/Prague) |
| config.tlsLegacyEnabled | bool | `false` | Enables support for legacy TLS 1.0 and 1.1 |
| config.transferV2Port | int | `29815` | Port for receiving device info and packet capture files (valid range: 1024-65535) |
| config.upgradeV1Port | int | `29813` | Firmware upgrade port for devices compatible with Controller v4* (valid range: 1024-65535) |
| fullnameOverride | string | `""` | Override for the full name. |
| image.pullPolicy | string | `"IfNotPresent"` | Image pull policy. |
| image.repository | string | `"docker.io/mbentley/omada-controller"` | Registry and repository for the omada-controller image. |
| image.tag | string | `"5.15.20.20"` | Tag for the image. |
| imagePullSecrets | list | `[]` | Secrets for pulling images. |
| nameOverride | string | `""` | Override for the name. |
| nodeSelector | object | `{}` | Node selector for the pods. |
| persistence.data.accessMode | string | `"ReadWriteOnce"` | Access mode for the PVC. |
| persistence.data.annotations | object | `{}` | Annotations applied to PVC. |
| persistence.data.enabled | bool | `false` | Enable/disable PVC creation for data. |
| persistence.data.existingClaim | string | `""` | Use an existing PVC if defined, otherwise create one. |
| persistence.data.size | string | `"10Gi"` | Storage size for the PVC. |
| persistence.data.storageClass | string | `""` | Specify the StorageClass (if required). |
| podAnnotations | object | `{}` | Annotations to be added to the pods. |
| podLabels | object | `{}` | Labels to be added to the pods. |
| podSecurityContext | object | `{}` |  |
| probes.enabled | bool | `false` | Enable or disable Kubernetes liveness and readiness probes |
| probes.livenessProbe | object | `{"httpGet":{"path":"/","port":8088}}` | Configuration for the Kubernetes liveness probe. This probe checks if the container is still running. If it fails, the container will be restarted. |
| probes.readinessProbe | object | `{"httpGet":{"path":"/","port":8088},"initialDelaySeconds":60}` | Configuration for the Kubernetes readiness probe. This probe checks if the container is ready to serve traffic. If it fails, the pod will be removed from service endpoints. |
| resources | object | `{}` |  |
| securityContext | object | `{}` |  |
| service.type | string | `"ClusterIP"` | Service type. |
| serviceAccount.annotations | object | `{}` | Annotations to add to the service account. |
| serviceAccount.automount | bool | `true` | Automatically mount a ServiceAccount's API credentials. |
| serviceAccount.create | bool | `true` | Specifies whether a service account should be created. |
| serviceAccount.name | string | `""` | The name of the service account to use. If not set and create is true, a name is generated using the fullname template. |
| tolerations | list | `[]` | Tolerations for the pods. |
| updateStrategy.rollingUpdate.maxUnavailable | string | `"100%"` |  |
| updateStrategy.rollingUpdate.partition | int | `0` |  |
| updateStrategy.type | string | `"RollingUpdate"` | The deployment strategy to use to replace existing pods with new ones. Options: "RollingUpdate" or "OnDelete". |

