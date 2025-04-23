# hosted-control-plane

![Version: 0.2.1](https://img.shields.io/badge/Version-0.2.1-informational?style=flat) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat) ![AppVersion: v1.33.0](https://img.shields.io/badge/AppVersion-v1.33.0-informational?style=flat)

_hosted-control-plane_ is a PoC/testing ground for any improvements that might
reach Cluster API Control Plane Provider KinK manifests.

**Homepage:** <https://anza-labs.github.io/kink>

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| Mateusz Urbanek | <matueusz.urbanek.98@gmail.com> | <http://linkedin.com/in/urbanekmateusz> |

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://charts.jetstack.io | cert-manager | >=v1.16.0 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| cert-manager.deploy | bool | `false` | Enable deployment of cert-manager. |
| certificates.issuerKind | string | `"Issuer"` | Set the kind of the issuer, as either 'Issuer' or 'ClusterIssuer'. |
| certificates.issuerNameOverride | string | `""` | Override the name of the certifcate issuer. |
| certificates.selfSigned | bool | `true` | Enable/disable self-signed certificate issuer. |
| fullnameOverride | string | `""` | Override for the full name. |
| generator.image.pullPolicy | string | `"IfNotPresent"` | Image pull policy. |
| generator.image.repository | string | `"docker.io/bitnami/kubectl"` | Registry and repository for the kine image. |
| generator.image.tag | string | `"1.32.4"` | Tag for the image. |
| generator.nodeSelector | object | `{}` | Node selector for the pods. |
| generator.podAnnotations | object | `{}` | Annotations to be added to the pods. |
| generator.podLabels | object | `{}` | Labels to be added to the pods. |
| generator.podSecurityContext | object | `{}` |  |
| generator.resources | object | `{}` |  |
| generator.secretType | string | `"Opaque"` | Type of generated secret. |
| generator.securityContext | object | `{}` |  |
| generator.serviceAnnotations | object | `{}` | Annotations to be added to the services. |
| generator.tolerations | list | `[]` | Tolerations for the pods. |
| imagePullSecrets | list | `[]` | Secrets for pulling images. |
| ingress.annotations | object | `{}` | Annotations to add to the ingress. |
| ingress.className | string | `""` | Ingress class name. |
| ingress.defaultHost | string | `"hosted-control-plane.example.local"` | Specifies the default host FQDN. |
| ingress.enabled | bool | `true` | Specifies whether ingress should be enabled. |
| ingress.hosts | list | `[{"host":"hosted-control-plane.example.local","paths":[{"path":"/","pathType":"ImplementationSpecific"}]}]` | List of ingress hosts. |
| ingress.tls | list | `[]` | List of TLS configurations for the ingress. |
| kine.affinity | object | `{}` | Affinity settings for the pods. |
| kine.image.pullPolicy | string | `"IfNotPresent"` | Image pull policy. |
| kine.image.repository | string | `"ghcr.io/anza-labs/library/kine"` | Registry and repository for the kine image. |
| kine.image.tag | string | `"v0.13.14"` | Tag for the image. |
| kine.nodeSelector | object | `{}` | Node selector for the pods. |
| kine.podAnnotations | object | `{}` | Annotations to be added to the pods. |
| kine.podLabels | object | `{}` | Labels to be added to the pods. |
| kine.podSecurityContext | object | `{}` |  |
| kine.resources | object | `{}` |  |
| kine.securityContext | object | `{}` |  |
| kine.serviceAnnotations | object | `{}` | Annotations to be added to the services. |
| kine.serviceMonitor.enabled | bool | `false` | Enable Prometheus ServiceMonitor. |
| kine.tolerations | list | `[]` | Tolerations for the pods. |
| konnectivity.agent.image.pullPolicy | string | `"IfNotPresent"` | Image pull policy. |
| konnectivity.agent.image.repository | string | `"registry.k8s.io/kas-network-proxy/proxy-agent"` | Registry and repository for the kas-network-proxy agent image. |
| konnectivity.agent.image.tag | string | `"v0.32.0"` | Tag for the image. |
| konnectivity.agent.verbosity | int | `4` | Set log verbosity of the component. |
| konnectivity.installer.image.pullPolicy | string | `"IfNotPresent"` | Image pull policy. |
| konnectivity.installer.image.repository | string | `"docker.io/bitnami/kubectl"` | Registry and repository for the kine image. |
| konnectivity.installer.image.tag | string | `"1.32.4"` | Tag for the image. |
| konnectivity.installer.nodeSelector | object | `{}` | Node selector for the pods. |
| konnectivity.installer.podAnnotations | object | `{}` | Annotations to be added to the pods. |
| konnectivity.installer.podLabels | object | `{}` | Labels to be added to the pods. |
| konnectivity.installer.podSecurityContext | object | `{}` |  |
| konnectivity.installer.resources | object | `{}` |  |
| konnectivity.installer.secretType | string | `"Opaque"` | Type of generated secret. |
| konnectivity.installer.securityContext | object | `{}` |  |
| konnectivity.installer.serviceAnnotations | object | `{}` | Annotations to be added to the services. |
| konnectivity.installer.tolerations | list | `[]` | Tolerations for the pods. |
| konnectivity.server.image.pullPolicy | string | `"IfNotPresent"` | Image pull policy. |
| konnectivity.server.image.repository | string | `"registry.k8s.io/kas-network-proxy/proxy-server"` | Registry and repository for the kas-network-proxy server image. |
| konnectivity.server.image.tag | string | `"v0.32.0"` | Tag for the image. |
| konnectivity.server.resources | object | `{}` |  |
| konnectivity.server.securityContext | object | `{}` |  |
| konnectivity.server.verbosity | int | `4` | Set log verbosity of the component. |
| kubeApiserver.affinity | object | `{}` | Affinity settings for the pods. |
| kubeApiserver.image.pullPolicy | string | `"IfNotPresent"` | Image pull policy. |
| kubeApiserver.image.repository | string | `"registry.k8s.io/kube-apiserver"` | Registry and repository for the controller-manager image. |
| kubeApiserver.image.tag | string | `""` | Tag for the image. |
| kubeApiserver.nodeSelector | object | `{}` | Node selector for the pods. |
| kubeApiserver.podAnnotations | object | `{}` | Annotations to be added to the pods. |
| kubeApiserver.podLabels | object | `{}` | Labels to be added to the pods. |
| kubeApiserver.podSecurityContext | object | `{}` |  |
| kubeApiserver.replicaCount | int | `1` | Number of replicas for the deployment. |
| kubeApiserver.resources | object | `{}` |  |
| kubeApiserver.securityContext | object | `{}` |  |
| kubeApiserver.serviceAnnotations | object | `{}` | Annotations to be added to the services. |
| kubeApiserver.serviceMonitor.enabled | bool | `false` | Enable Prometheus ServiceMonitor. |
| kubeApiserver.tolerations | list | `[]` | Tolerations for the pods. |
| kubeApiserver.verbosity | int | `4` | Set log verbosity of the component. |
| kubeControllerManager.affinity | object | `{}` | Affinity settings for the pods. |
| kubeControllerManager.image.pullPolicy | string | `"IfNotPresent"` | Image pull policy. |
| kubeControllerManager.image.repository | string | `"registry.k8s.io/kube-controller-manager"` | Registry and repository for the controller-manager image. |
| kubeControllerManager.image.tag | string | `""` | Tag for the image. |
| kubeControllerManager.nodeSelector | object | `{}` | Node selector for the pods. |
| kubeControllerManager.podAnnotations | object | `{}` | Annotations to be added to the pods. |
| kubeControllerManager.podLabels | object | `{}` | Labels to be added to the pods. |
| kubeControllerManager.podSecurityContext | object | `{}` |  |
| kubeControllerManager.replicaCount | int | `1` | Number of replicas for the deployment. |
| kubeControllerManager.resources | object | `{}` |  |
| kubeControllerManager.securityContext | object | `{}` |  |
| kubeControllerManager.serviceAnnotations | object | `{}` | Annotations to be added to the services. |
| kubeControllerManager.serviceMonitor.enabled | bool | `false` | Enable Prometheus ServiceMonitor. |
| kubeControllerManager.tolerations | list | `[]` | Tolerations for the pods. |
| kubeControllerManager.verbosity | int | `4` | Set log verbosity of the component. |
| kubeScheduler.affinity | object | `{}` | Affinity settings for the pods. |
| kubeScheduler.image.pullPolicy | string | `"IfNotPresent"` | Image pull policy. |
| kubeScheduler.image.repository | string | `"registry.k8s.io/kube-scheduler"` | Registry and repository for the controller-manager image. |
| kubeScheduler.image.tag | string | `""` | Tag for the image. |
| kubeScheduler.nodeSelector | object | `{}` | Node selector for the pods. |
| kubeScheduler.podAnnotations | object | `{}` | Annotations to be added to the pods. |
| kubeScheduler.podLabels | object | `{}` | Labels to be added to the pods. |
| kubeScheduler.podSecurityContext | object | `{}` |  |
| kubeScheduler.replicaCount | int | `1` | Number of replicas for the deployment. |
| kubeScheduler.resources | object | `{}` |  |
| kubeScheduler.securityContext | object | `{}` |  |
| kubeScheduler.serviceAnnotations | object | `{}` | Annotations to be added to the services. |
| kubeScheduler.serviceMonitor.enabled | bool | `false` | Enable Prometheus ServiceMonitor. |
| kubeScheduler.tolerations | list | `[]` | Tolerations for the pods. |
| kubeScheduler.verbosity | int | `4` | Set log verbosity of the component. |
| kubernetes.clusterCIDR | string | `"10.200.0.0/16"` | Set the cluster CIDR. |
| kubernetes.serviceIPRange | string | `"10.32.0.0/24"` | Set the Service IP range for cluster. |
| kubernetes.version | string | `"v1.33.0"` | Version of the Kubernetes Control Plane. renovate: datasource=docker depName=registry.k8s.io/kube-apiserver |
| nameOverride | string | `""` | Override for the name. |

