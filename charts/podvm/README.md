# podvm

![Version: 0.0.0-alpha.9](https://img.shields.io/badge/Version-0.0.0--alpha.9-informational?style=flat) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat) ![AppVersion: v1.12.0](https://img.shields.io/badge/AppVersion-v1.12.0-informational?style=flat)

_podvm_ is a PoC/testing for running Firecracker in Kubernetes.

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| shanduur | <maturb@proton.me> | <http://linkedin.com/in/urbanekmateusz> |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{"nodeAffinity":{"requiredDuringSchedulingIgnoredDuringExecution":{"nodeSelectorTerms":[{"matchExpressions":[{"key":"kubernetes.io/arch","operator":"In","values":["amd64","arm64"]},{"key":"kubernetes.io/os","operator":"In","values":["linux"]}]}]}}}` | Affinity settings for the pods. |
| config | object | `{"balloon":null,"boot-source":{"boot_args":"console=ttyS0 reboot=k panic=1 pci=off","initrd_path":null,"kernel_image_path":"/mnt/kernel/vmlinux.bin"},"cpu-config":null,"drives":[{"cache_type":"Unsafe","drive_id":"rootfs","io_engine":"Sync","is_read_only":false,"is_root_device":true,"partuuid":null,"path_on_host":"/mnt/rootfs/bionic.rootfs.ext4","rate_limiter":null,"socket":null}],"entropy":null,"logger":null,"machine-config":{"huge_pages":"None","mem_size_mib":1024,"smt":false,"track_dirty_pages":false,"vcpu_count":2},"metrics":null,"mmds-config":null,"network-interfaces":[],"vsock":null}` | Firecracker configuration, in YAML format. It requires at least one drive, and first drive MUST BE a rootfs drive. |
| firecracker.image.pullPolicy | string | `"IfNotPresent"` | Image pull policy. |
| firecracker.image.repository | string | `"ghcr.io/anza-labs/library/firecracker"` | Registry and repository for the podvm image. |
| firecracker.image.tag | string | `"v1.12.0"` | Tag for the image. |
| firecracker.securityContext | object | `{}` |  |
| fullnameOverride | string | `""` | Override for the full name. |
| imagePullSecrets | list | `[]` | Secrets for pulling images. |
| kernel.image.pullPolicy | string | `"IfNotPresent"` | Image pull policy. |
| kernel.image.repository | string | `""` | Registry and repository for the kernel image. |
| kernel.image.tag | string | `""` | Tag for the image. |
| kvm.name | string | `"devices.anza-labs.dev/kvm"` | Name of the KVM device requested. Should be one of: `"devices.kubevirt.io/kvm"` when using https://github.com/kubevirt/kubernetes-device-plugins, `"devices.anza-labs.dev/kvm"` when using https://github.com/anza-labs/kubelet-device-plugins. |
| nameOverride | string | `""` | Override for the name. |
| nodeSelector | object | `{}` | Node selector for the pods. |
| podAnnotations | object | `{}` | Annotations to be added to the pods. |
| podLabels | object | `{}` | Labels to be added to the pods. |
| podSecurityContext | object | `{}` |  |
| replicaCount | int | `1` | Number of replicas for the deployment. |
| rootfs.image.pullPolicy | string | `"IfNotPresent"` | Image pull policy. |
| rootfs.image.repository | string | `""` | Registry and repository for the rootfs image. |
| rootfs.image.tag | string | `""` | Tag for the image. |
| tolerations | list | `[]` | Tolerations for the pods. |
| tun.name | string | `"devices.anza-labs.dev/tun"` | Name of the TUN device requested. `"devices.anza-labs.dev/tun"` when using https://github.com/anza-labs/kubelet-device-plugins. |
| volumeMounts | list | `[]` | Additional volumeMounts. |
| volumes | list | `[]` | Additional volumes. |

