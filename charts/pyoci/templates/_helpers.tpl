{{/*
Expand the name of the chart.
*/}}
{{- define "pyoci.name" -}}
    {{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "pyoci.fullname" -}}
    {{- if .Values.fullnameOverride }}
        {{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
    {{- else }}
        {{- $name := default .Chart.Name .Values.nameOverride }}
        {{- if contains $name .Release.Name }}
            {{- .Release.Name | trunc 63 | trimSuffix "-" }}
        {{- else }}
            {{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" }}
        {{- end }}
    {{- end }}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "pyoci.chart" -}}
    {{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "pyoci.labels" -}}
helm.sh/chart: {{ include "pyoci.chart" . }}
{{ include "pyoci.selectorLabels" . }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "pyoci.selectorLabels" -}}
app.kubernetes.io/name: {{ include "pyoci.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/*
Create the name of the service account to use
*/}}
{{- define "pyoci.serviceAccountName" -}}
    {{- if .Values.serviceAccount.create }}
        {{- default (include "pyoci.fullname" .) .Values.serviceAccount.name }}
    {{- else }}
        {{- default "default" .Values.serviceAccount.name }}
    {{- end }}
{{- end }}

{{/*
Create config map name used for configuring pyoci telemetry.
*/}}
{{- define "pyoci.telemetryConfig" -}}
    {{- default (printf "%s-telemetry" (include "pyoci.fullname" .)) .Values.telemetry.name }}
{{- end }}
