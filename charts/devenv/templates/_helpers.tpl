{{/*
Expand the name of the chart.
*/}}
{{- define "devenv.name" -}}
    {{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "devenv.fullname" -}}
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
{{- define "devenv.chart" -}}
    {{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "devenv.labels" -}}
helm.sh/chart: {{ include "devenv.chart" . }}
{{ include "devenv.selectorLabels" . }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "devenv.selectorLabels" -}}
app.kubernetes.io/name: {{ include "devenv.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/*
Create the name of the service account to use
*/}}
{{- define "devenv.serviceAccountName" -}}
    {{- if .Values.serviceAccount.create }}
        {{- default (include "devenv.fullname" .) .Values.serviceAccount.name }}
    {{- else }}
        {{- default "default" .Values.serviceAccount.name }}
    {{- end }}
{{- end }}

{{/*
Name of the SSH authorized keys secret.
*/}}
{{- define "devenv.sshKeysSecret" -}}
    {{- if .Values.sshKeys.existingSecret }}
        {{- .Values.sshKeys.existingSecret }}
    {{- else }}
        {{- printf "%s-ssh-keys" (include "devenv.fullname" .) }}
    {{- end }}
{{- end }}

{{/*
Bootstrap ConfigMap name.
*/}}
{{- define "devenv.bootstrapConfigMap" -}}
    {{- printf "%s-bootstrap" (include "devenv.fullname" .) }}
{{- end }}

{{/*
Headless service name.
*/}}
{{- define "devenv.headlessService" -}}
    {{- printf "%s-headless" (include "devenv.fullname" .) }}
{{- end }}
