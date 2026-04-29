# The Anza Labs Library for Kubernetes

[![Artifact Hub](https://img.shields.io/endpoint?url=https://artifacthub.io/badge/repository/anza-labs)](https://artifacthub.io/packages/search?repo=anza-labs)

## Helm Repository

### Adding the Repository

To add the Anza Labs Helm repository, run:

```bash
helm repo add anza-labs https://anza-labs.github.io/charts
```

### Updating the Repository

To update the repository, run:

```bash
helm repo update anza-labs
```

## Installing Charts

To install a chart from this repository, run:

```bash
helm install <release-name> anza-labs/<chart-name> --version <chart-version>
```

To upgrade an existing installation:

```bash
helm upgrade <release-name> anza-labs/<chart-name>
```

To uninstall a release:

```bash
helm uninstall <release-name>
```

## Available Charts

| Name | Artifact Hub |
|------|--------------|
| [glauth](charts/glauth) | [![Artifact Hub](https://img.shields.io/static/v1?logo=ArtifactHub&label=ArtifactHub&message=View&color=blue)](https://artifacthub.io/packages/helm/anza-labs/glauth) |
| [lubelogger](charts/lubelogger) | [![Artifact Hub](https://img.shields.io/static/v1?logo=ArtifactHub&label=ArtifactHub&message=View&color=blue)](https://artifacthub.io/packages/helm/anza-labs/lubelogger) |
| [meta-chart](charts/meta-chart) | [![Artifact Hub](https://img.shields.io/static/v1?logo=ArtifactHub&label=ArtifactHub&message=View&color=blue)](https://artifacthub.io/packages/helm/anza-labs/meta-chart) |
| [pocket-id](charts/pocket-id) | [![Artifact Hub](https://img.shields.io/static/v1?logo=ArtifactHub&label=ArtifactHub&message=View&color=blue)](https://artifacthub.io/packages/helm/anza-labs/pocket-id) |
| [pyoci](charts/pyoci) | [![Artifact Hub](https://img.shields.io/static/v1?logo=ArtifactHub&label=ArtifactHub&message=View&color=blue)](https://artifacthub.io/packages/helm/anza-labs/pyoci) |
| [registry](charts/registry) | [![Artifact Hub](https://img.shields.io/static/v1?logo=ArtifactHub&label=ArtifactHub&message=View&color=blue)](https://artifacthub.io/packages/helm/anza-labs/registry) |
