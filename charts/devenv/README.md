# devenv

![Version: 0.1.2](https://img.shields.io/badge/Version-0.1.2-informational?style=flat) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat) ![AppVersion: latest](https://img.shields.io/badge/AppVersion-latest-informational?style=flat)

Nix development environment pod with Tailscale SSH access and optional Docker-in-Docker.

**Homepage:** <https://github.com/anza-labs/charts>

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| shanduur | <maturb@proton.me> | <http://linkedin.com/in/urbanekmateusz> |

## Source Code

* <https://github.com/anza-labs/charts>

## Prerequisites

Before installing, create the required Kubernetes Secrets and ConfigMaps that the chart expects.

### Tailscale auth key

The default `tailscale.authKeySecret` value is `tailscale-auth`. Create it in the target namespace:

```bash
kubectl create secret generic tailscale-auth \
  --namespace devenv \
  --from-literal=TS_AUTHKEY=tskey-auth-xxxxxxxx
```

### SSH authorized keys

Provide public keys via `sshKeys.authorizedKeys` at install time, or create a Secret in advance:

```bash
cat ~/.ssh/id_ed25519.pub | kubectl create secret generic my-ssh-keys \
  --namespace devenv \
  --from-file=authorized_keys=/dev/stdin
```

Then set `--set sshKeys.existingSecret=my-ssh-keys`.

## Installation

To install the chart with the release name `devenv`:

```bash
helm repo add anza-labs https://anza-labs.github.io/charts
helm repo update anza-labs
helm install devenv anza-labs/devenv --version 0.1.2
```

## Upgrading

To upgrade an existing installation:

```bash
helm upgrade devenv anza-labs/devenv
```

## Uninstalling

To uninstall an existing installation:

```bash
helm uninstall devenv
```

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` | Affinity settings for the pods. |
| bootstrapScript | string | `""` | Custom bootstrap script (overrides the default). |
| core.env | list | `[]` | Extra environment variables for the core container. |
| core.extraVolumeMounts | list | `[]` | Extra volume mounts for the core container. |
| core.image.packages | list | `["age","coreutils","curl","dnsutils","fd","file","fzf","git","gnupg","gnutar","gzip","htop","iproute2","lsof","ncurses","neovim","openssh","openssl","ripgrep","util-linux","xz","zsh"]` | Nixery packages to include (e.g. [go, rustc, cargo]). |
| core.image.pullPolicy | string | `"IfNotPresent"` | Image pull policy. |
| core.image.repository | string | `"nixery.dev/shell"` | Registry and repository for the image (will have packages appended). |
| core.image.tag | string | `"latest"` | Image tag. |
| core.resources | object | `{"limits":{"cpu":2,"memory":"4Gi"},"requests":{"cpu":"500m","memory":"1Gi"}}` | Resource requests and limits. |
| core.securityContext | object | `{}` | Security context (core container) |
| core.shell | string | `"/bin/zsh"` | Login shell for the user (e.g. /bin/zsh). |
| core.user | string | `"devpod"` | Non-root username. |
| core.workingDir | string | `"/home/devpod"` | Working directory. |
| dind.enabled | bool | `false` | Enable Docker-in-Docker sidecar. |
| dind.image.pullPolicy | string | `"IfNotPresent"` | Image pull policy. |
| dind.image.repository | string | `"docker.io/library/docker"` | DinD image repository. |
| dind.image.tag | string | `"dind"` | DinD image tag. |
| dind.persistence.size | string | `"30Gi"` | Docker storage PVC size. |
| dind.persistence.storageClass | string | `""` | Storage class for Docker storage PVC. |
| dind.privileged | bool | `true` | Run DinD in privileged mode. |
| dind.resources | object | `{"limits":{"cpu":2,"memory":"4Gi"},"requests":{"cpu":"500m","memory":"1Gi"}}` | Resource requests and limits. |
| dind.storageSize | string | `"30Gi"` | Docker storage size. |
| dind.userNamespace.enabled | bool | `false` | Use user-namespace mode (requires kernel >=5.12). |
| dotfiles.git.hookCommand | string | `""` | Optional command to run after dotfiles are cloned (e.g. "cd dotfiles && stow ."). |
| dotfiles.git.image.pullPolicy | string | `"IfNotPresent"` | Image pull policy. |
| dotfiles.git.image.repository | string | `"nixery.dev/shell/git"` | Registry and repository for the image (will have packages appended). |
| dotfiles.git.image.tag | string | `"latest"` | Image tag. |
| dotfiles.git.repository | list | `[{"name":".ohmyzsh","repo":"https://github.com/ohmyzsh/ohmyzsh.git","revision":"master"}]` | Git repositories for dotfiles. |
| fullnameOverride | string | `""` | Override for the full name. |
| hostPathTun.enabled | bool | `true` | Enable hostPath mount for /dev/net/tun. |
| hostPathTun.path | string | `"/dev/net/tun"` | Path to the TUN device. |
| imagePullSecrets | list | `[]` | Secrets for pulling images. |
| nameOverride | string | `""` | Override for the name. |
| nodeSelector | object | `{"kubernetes.io/os":"linux"}` | Node selector for the pods. |
| persistence.home.accessModes | list | `["ReadWriteOnce"]` | Access modes for home PVC. |
| persistence.home.enabled | bool | `true` | Enable home directory PVC. |
| persistence.home.size | string | `"10Gi"` | Home directory PVC size. |
| persistence.home.storageClass | string | `""` | Storage class for home PVC. |
| podAnnotations | object | `{}` | Annotations to be added to the pods. |
| podLabels | object | `{}` | Labels to be added to the pods. |
| podSecurityContext | object | `{}` |  |
| reboot.enabled | bool | `false` | Enable weekly reboot CronJob (restarts on Sunday at midnight). |
| reboot.image.pullPolicy | string | `"IfNotPresent"` | Image pull policy. |
| reboot.image.repository | string | `"nixery.dev/kubectl"` | kubectl image repository. |
| reboot.image.tag | string | `"latest"` | Image tag. |
| reboot.resources | object | `{"limits":{"cpu":"200m","memory":"256Mi"},"requests":{"cpu":"50m","memory":"64Mi"}}` | Resource requests and limits for the reboot Job pod. |
| reboot.schedule | string | `"0 0 * * 0"` | Cron schedule expression (default: Sunday at midnight). |
| service.annotations | object | `{}` | Annotations to add to the headless service. |
| serviceAccount.annotations | object | `{}` | Annotations to add to the service account. |
| serviceAccount.automount | bool | `true` | Automatically mount a ServiceAccount's API credentials. |
| serviceAccount.create | bool | `true` | Specifies whether a service account should be created. |
| serviceAccount.name | string | `""` | The name of the service account to use. If not set and create is true, a name is generated using the fullname template. |
| sshKeys.authorizedKeys | string | `""` | Authorized public keys (one per line). |
| sshKeys.existingSecret | string | `""` | Name of an existing secret containing key "authorized_keys". |
| tailscale.authKeySecret | string | `"tailscale-auth"` | Name of the secret containing TS_AUTHKEY. |
| tailscale.enabled | bool | `true` | Enable Tailscale sidecar for SSH access. |
| tailscale.hostname | string | `""` | Optional custom hostname (defaults to pod name). |
| tailscale.image.pullPolicy | string | `"IfNotPresent"` | Image pull policy. |
| tailscale.image.repository | string | `"docker.io/tailscale/tailscale"` | Tailscale image repository. |
| tailscale.image.tag | string | `"stable"` | Tailscale image tag. |
| tailscale.persistence.size | string | `"256Mi"` | Size for Tailscale state PVC. |
| tailscale.persistence.storageClass | string | `""` | Storage class for Tailscale state PVC. |
| tailscale.resources | object | `{"limits":{"cpu":"200m","memory":"256Mi"},"requests":{"cpu":"50m","memory":"64Mi"}}` | Resource requests and limits. |
| tolerations | list | `[]` | Tolerations for the pods. |
| updateStrategy.type | string | `"OnDelete"` |  |

