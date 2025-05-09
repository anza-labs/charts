# kube-storage-version-migrator

> **:exclamation: This Helm Chart is deprecated!**

![Version: 0.1.1](https://img.shields.io/badge/Version-0.1.1-informational?style=flat) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat) ![AppVersion: v0.0.5](https://img.shields.io/badge/AppVersion-v0.0.5-informational?style=flat)

_kube-storage-version-migrator_ migrates stored data in etcd to the latest storage version.

This is useful for clusters with K8s < 1.30.
In clusters version 1.30, admins should enable the following Feature Gate:
- _StorageVersionMigrator_[^1]

[^1]: https://kubernetes.io/docs/reference/command-line-tools-reference/feature-gates/

**Homepage:** <https://github.com/kubernetes-sigs/kube-storage-version-migrator>

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| shanduur | <maturb@proton.me> | <http://linkedin.com/in/urbanekmateusz> |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` | Affinity settings for the pods. |
| fullnameOverride | string | `""` | Override for the full name. |
| imagePullSecrets | list | `[]` | Secrets for pulling images. |
| migrator.enabled | bool | `true` | Enable or disable trigger. |
| migrator.image.pullPolicy | string | `"IfNotPresent"` | Image pull policy. |
| migrator.image.repository | string | `"registry.k8s.io/storage-migrator/storage-version-migration-migrator"` | Registry and repository for the kube-storage-version-migrator migrator image. |
| migrator.image.tag | string | `"v0.0.5"` | Tag for the image. |
| migrator.replicaCount | int | `1` | Number of replicas for the deployment. |
| nameOverride | string | `""` | Override for the name. |
| nodeSelector | object | `{}` | Node selector for the pods. |
| podAnnotations | object | `{}` | Annotations to be added to the pods. |
| podLabels | object | `{}` | Labels to be added to the pods. |
| podSecurityContext | object | `{}` |  |
| resources | object | `{}` |  |
| securityContext | object | `{}` |  |
| serviceAnnotations | object | `{}` | Annotations to be added to the services. |
| tolerations | list | `[]` | Tolerations for the pods. |
| trigger.enabled | bool | `true` | Enable or disable trigger. |
| trigger.image.pullPolicy | string | `"IfNotPresent"` | Image pull policy. |
| trigger.image.repository | string | `"registry.k8s.io/storage-migrator/storage-version-migration-trigger"` | Registry and repository for the kube-storage-version-migrator trigger image. |
| trigger.image.tag | string | `"v0.0.5"` | Tag for the image. |
| trigger.replicaCount | int | `1` | Number of replicas for the deployment. |

