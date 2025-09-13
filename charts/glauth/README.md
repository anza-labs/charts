# glauth

![Version: 0.2.0](https://img.shields.io/badge/Version-0.2.0-informational?style=flat) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat) ![AppVersion: v2.4.0](https://img.shields.io/badge/AppVersion-v2.4.0-informational?style=flat)

glauth is a lightweight LDAP server for development, home use, or CI.

**Homepage:** <https://glauth.github.io>

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| shanduur | <maturb@proton.me> | <http://linkedin.com/in/urbanekmateusz> |

## Source Code

* <https://github.com/glauth/glauth>

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` | Affinity settings for the pods. |
| fullnameOverride | string | `""` | Override for the full name. |
| image.pullPolicy | string | `"IfNotPresent"` | Image pull policy. |
| image.repository | string | `"ghcr.io/glauth/glauth"` | Registry and repository for the glauth image. If you want extra functionality, set repository to `ghcr.io/glauth/glauth-plugins`. |
| image.tag | string | `"v2.4.0"` | Tag for the image. |
| imagePullSecrets | list | `[]` | Secrets for pulling images. |
| ingress.annotations | object | `{}` | Annotations to add to the ingress. |
| ingress.className | string | `""` | Ingress class name. |
| ingress.enabled | bool | `false` | Specifies whether ingress should be enabled. |
| ingress.host | string | `"glauth.example.local"` | Ingress host configuration. |
| ingress.paths[0].path | string | `"/"` |  |
| ingress.paths[0].pathType | string | `"ImplementationSpecific"` |  |
| ingress.tls | list | `[]` | List of TLS configurations for the ingress. |
| nameOverride | string | `""` | Override for the name. |
| nodeSelector | object | `{}` | Node selector for the pods. |
| podAnnotations | object | `{}` | Annotations to be added to the pods. |
| podLabels | object | `{}` | Labels to be added to the pods. |
| podSecurityContext | object | `{}` |  |
| replicaCount | int | `1` | Number of replicas for the deployment. |
| resources | object | `{}` |  |
| secret.create | bool | `true` | Specifies whether a secret should be created. |
| secret.name | string | `""` | Specifies name of a secret used to configure the glauth. If not filled, uses full name. |
| secret.value.api.cert | string | `nil` |  |
| secret.value.api.enabled | bool | `true` |  |
| secret.value.api.key | string | `nil` |  |
| secret.value.api.listen | string | `"0.0.0.0:5555"` |  |
| secret.value.api.tls | bool | `false` |  |
| secret.value.backend.baseDN | string | `"dc=glauth,dc=com"` |  |
| secret.value.backend.datastore | string | `"config"` |  |
| secret.value.backend.groupformat | string | `nil` |  |
| secret.value.backend.nameformat | string | `nil` |  |
| secret.value.backend.sshkeyattr | string | `nil` |  |
| secret.value.behaviors.BlockFailedBindsFor | int | `60` |  |
| secret.value.behaviors.IgnoreCapabilities | bool | `false` |  |
| secret.value.behaviors.LimitFailedBinds | bool | `true` |  |
| secret.value.behaviors.NumberOfFailedBinds | int | `3` |  |
| secret.value.behaviors.PeriodOfFailedBinds | int | `10` |  |
| secret.value.behaviors.PruneSourceTableEvery | int | `600` |  |
| secret.value.behaviors.PruneSourcesOlderThan | int | `600` |  |
| secret.value.debug | bool | `false` |  |
| secret.value.groups | string | `nil` |  |
| secret.value.ldap.enabled | bool | `true` |  |
| secret.value.ldap.listen | string | `"0.0.0.0:3893"` |  |
| secret.value.ldaps.cert | string | `nil` |  |
| secret.value.ldaps.enabled | bool | `false` |  |
| secret.value.ldaps.key | string | `nil` |  |
| secret.value.ldaps.listen | string | `"0.0.0.0:3894"` |  |
| secret.value.syslog | string | `nil` |  |
| secret.value.users | string | `nil` |  |
| secret.value.watchconfig | string | `nil` |  |
| secret.value.yubikeyclientid | string | `nil` |  |
| secret.value.yubikeysecret | string | `nil` |  |
| securityContext | object | `{}` |  |
| service.annotations | object | `{}` | Annotations to add to the service. |
| service.type | string | `"ClusterIP"` | Service type. |
| serviceAccount.annotations | object | `{}` | Annotations to add to the service account. |
| serviceAccount.automount | bool | `true` | Automatically mount a ServiceAccount's API credentials. |
| serviceAccount.create | bool | `true` | Specifies whether a service account should be created. |
| serviceAccount.name | string | `""` | The name of the service account to use. If not set and create is true, a name is generated using the fullname template. |
| tolerations | list | `[]` | Tolerations for the pods. |

