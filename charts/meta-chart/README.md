# meta-chart

![Version: 0.1.2](https://img.shields.io/badge/Version-0.1.2-informational?style=flat) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat) ![AppVersion: meta](https://img.shields.io/badge/AppVersion-meta-informational?style=flat)

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| shanduur | <maturb@proton.me> | <http://linkedin.com/in/urbanekmateusz> |

## Installation

To install the chart with the release name `meta-chart`:

```bash
helm repo add anza-labs https://anza-labs.github.io/charts
helm repo update anza-labs
helm install meta-chart anza-labs/meta-chart --version 0.1.2
```

## Upgrading

To upgrade an existing installation:

```bash
helm upgrade meta-chart anza-labs/meta-chart
```

## Uninstalling

To uninstall an existing installation:

```bash
helm uninstall meta-chart
```

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| namespaces | list | `[]` | List of Kubernetes namespaces to create |
| resources | list | `[]` | List of custom resources to deploy. Each item should define `apiVersion`, `kind`, `metadata`, and `spec` as needed. |

