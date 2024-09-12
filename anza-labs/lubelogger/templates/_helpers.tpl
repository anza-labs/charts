{{/*
Expand the name of the chart.
*/}}
{{- define "lubelog.name" -}}
    {{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "lubelog.fullname" -}}
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
{{- define "lubelog.chart" -}}
    {{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "lubelog.labels" -}}
helm.sh/chart: {{ include "lubelog.chart" . }}
{{ include "lubelog.selectorLabels" . }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "lubelog.selectorLabels" -}}
app.kubernetes.io/name: {{ include "lubelog.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/*
Create the name of the service account to use
*/}}
{{- define "lubelog.serviceAccountName" -}}
    {{- if .Values.serviceAccount.create }}
        {{- default (include "lubelog.fullname" .) .Values.serviceAccount.name }}
    {{- else }}
        {{- default "default" .Values.serviceAccount.name }}
    {{- end }}
{{- end }}

{{/*
Create secret name used for configuring mail.
*/}}
{{- define "lubelog.mailSecret" -}}
    {{- default (printf "%s-mail" (include "lubelog.fullname" .)) .Values.secret.name }}
{{- end }}

{{/*
Create secret name used for configuring PostgreSQL connection.
*/}}
{{- define "lubelog.postgresSecret" -}}
    {{- default ( printf "%s-postgres-connection" (include "lubelog.fullname" .)) .Values.postgres.name }}
{{- end }}

{{/*
Create key under which PostgreSQL connection string can be found.
*/}}
{{- define "lubelog.postgresSecretKey" -}}
    {{- default "POSTGRES_CONNECTION" .Values.postgres.keyRef }}
{{- end }}

{{/*
Create pvc name used for configuring the data persistence in app.
*/}}
{{- define "lubelog.pvcData" -}}
    {{- default ( printf "%s-data" (include "lubelog.fullname" .)) .Values.persistence.data.existingClaim }}
{{- end }}

{{/*
Create pvc name used for configuring the documents persistence in app.
*/}}
{{- define "lubelog.pvcDocuments" -}}
    {{- default ( printf "%s-documents" (include "lubelog.fullname" .)) .Values.persistence.documents.existingClaim }}
{{- end }}

{{/*
Create pvc name used for configuring the images persistence in app.
*/}}
{{- define "lubelog.pvcImages" -}}
    {{- default ( printf "%s-images" (include "lubelog.fullname" .)) .Values.persistence.images.existingClaim }}
{{- end }}
