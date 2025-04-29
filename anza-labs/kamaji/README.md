# kamaji

![Version: 0.1.6](https://img.shields.io/badge/Version-0.1.6-informational?style=flat) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat) ![AppVersion: edge-25.4.1](https://img.shields.io/badge/AppVersion-edge--25.4.1-informational?style=flat)

_Kamaji_ is the Kubernetes Control Plane Manager.

**Homepage:** <https://kamaji.clastix.io>

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| Mateusz Urbanek | <matueusz.urbanek.98@gmail.com> | <http://linkedin.com/in/urbanekmateusz> |

## Source Code

* <https://github.com/clastix/kamaji>

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://clastix.github.io/charts | kamaji-etcd | >=0.9.2 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` | Kubernetes affinity rules to apply to Kamaji controller pods. |
| defaultDatastoreName | string | `"default"` | If specified, all the Kamaji instances with an unassigned DataStore will inherit this default value. |
| extraArgs | list | `[]` | A list of extra arguments to add to the kamaji controller default ones. |
| fullnameOverride | string | `""` |  |
| healthProbeBindAddress | string | `":8081"` | The address the probe endpoint binds to. (default ":8081") |
| image.pullPolicy | string | `"IfNotPresent"` | Image pull policy. |
| image.repository | string | `"docker.io/clastix/kamaji"` | Registry and repository for the kamaji image. |
| image.tag | string | `"edge-25.4.1"` | Tag for the image. |
| imagePullSecrets | list | `[]` |  |
| kamaji-etcd.datastore.enabled | bool | `true` |  |
| kamaji-etcd.datastore.name | string | `"default"` |  |
| kamaji-etcd.deploy | bool | `true` |  |
| kamaji-etcd.fullnameOverride | string | `"kamaji-etcd"` |  |
| livenessProbe | object | `{"httpGet":{"path":"/healthz","port":"healthcheck"},"initialDelaySeconds":15,"periodSeconds":20}` | The livenessProbe for the controller container. |
| loggingDevel.enable | bool | `false` | Development Mode defaults(encoder=consoleEncoder,logLevel=Debug,stackTraceLevel=Warn). Production Mode defaults(encoder=jsonEncoder,logLevel=Info,stackTraceLevel=Error) (default false) |
| metricsBindAddress | string | `":8080"` | The address the metric endpoint binds to. (default ":8080") |
| nameOverride | string | `""` |  |
| nodeSelector | object | `{}` | Kubernetes node selector rules to schedule Kamaji controller. |
| podAnnotations | object | `{}` | The annotations to apply to the Kamaji controller pods. |
| podSecurityContext | object | `{"runAsNonRoot":true}` | The securityContext to apply to the Kamaji controller pods. |
| readinessProbe | object | `{"httpGet":{"path":"/readyz","port":"healthcheck"},"initialDelaySeconds":5,"periodSeconds":10}` | The readinessProbe for the controller container. |
| replicaCount | int | `1` | The number of the pod replicas for the Kamaji controller. |
| resources.limits.cpu | string | `"200m"` |  |
| resources.limits.memory | string | `"100Mi"` |  |
| resources.requests.cpu | string | `"100m"` |  |
| resources.requests.memory | string | `"20Mi"` |  |
| securityContext | object | `{"allowPrivilegeEscalation":false}` | The securityContext to apply to the Kamaji controller container only. It does not apply to the Kamaji RBAC proxy container. |
| serviceAccount.annotations | object | `{}` |  |
| serviceAccount.create | bool | `true` |  |
| serviceAccount.name | string | `"kamaji-controller-manager"` |  |
| serviceMonitor.enabled | bool | `false` | Toggle the ServiceMonitor true if you have Prometheus Operator installed and configured. |
| telemetry | object | `{"disabled":false}` | Disable the analytics traces collection. |
| temporaryDirectoryPath | string | `"/tmp/kamaji"` | Directory which will be used to work with temporary files. (default "/tmp/kamaji") |
| tolerations | list | `[]` | Kubernetes node taints that the Kamaji controller pods would tolerate. |

