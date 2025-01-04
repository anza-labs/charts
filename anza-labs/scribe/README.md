# scribe

![Version: 0.3.0](https://img.shields.io/badge/Version-0.3.0-informational?style=flat) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat) ![AppVersion: v0.3.0](https://img.shields.io/badge/AppVersion-v0.3.0-informational?style=flat)

Scribe is a tool that automates the propagation of annotations across Kubernetes resources based
on the annotations in a Namespace.

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| Mateusz Urbanek | <matueusz.urbanek.98@gmail.com> | <http://linkedin.com/in/urbanekmateusz> |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` | Affinity settings for the pods. |
| config[0].apiVersion | string | `"apps/v1"` |  |
| config[0].resources[0].kind | string | `"DaemonSet"` |  |
| config[0].resources[1].kind | string | `"Deployment"` |  |
| config[0].resources[2].kind | string | `"StatefulSet"` |  |
| config[0].resources[2].plural | string | `"statefulsets"` |  |
| fullnameOverride | string | `""` | Override for the full name. |
| image.pullPolicy | string | `"IfNotPresent"` | Image pull policy. |
| image.repository | string | `"ghcr.io/anza-labs/scribe"` | Registry and repository for the scribe image. |
| image.tag | string | `"v0.3.0"` | Tag for the image. |
| imagePullSecrets | list | `[]` | Secrets for pulling images. |
| nameOverride | string | `""` | Override for the name. |
| nodeSelector | object | `{}` | Node selector for the pods. |
| podAnnotations | object | `{}` | Annotations to be added to the pods. |
| podLabels | object | `{}` | Labels to be added to the pods. |
| podSecurityContext | object | `{}` |  |
| replicaCount | int | `1` | Number of replicas for the deployment. |
| resources | object | `{}` |  |
| securityContext | object | `{}` |  |
| tolerations | list | `[]` | Tolerations for the pods. |

