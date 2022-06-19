{{/*
Expand the name of the chart.
*/}}
{{- define "code-server.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "code-server.fullname" -}}
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
{{- define "code-server.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "code-server.labels" -}}
helm.sh/chart: {{ include "code-server.chart" . }}
{{ include "code-server.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "code-server.selectorLabels" -}}
app.kubernetes.io/name: {{ include "code-server.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/*
Create the name of the service account to use
*/}}
{{- define "code-server.serviceAccountName" -}}
{{- if .Values.serviceAccount.create }}
{{- default (include "code-server.fullname" .) .Values.serviceAccount.name }}
{{- else }}
{{- default "default" .Values.serviceAccount.name }}
{{- end }}
{{- end }}

{{/*
Timezone
*/}}
{{- define "code-server.timezone" -}}
{{- $timezone := dict -}}
{{- range $i, $val := .Values.env -}}
{{- if eq $val.name "TZ" -}}
{{- $_ := set $timezone "value" $val.value -}}
{{- end -}}
{{- end -}}
{{- default "UTC" (get $timezone "value") }}
{{- end }}

{{/*
Schedule
*/}}
{{- define "code-server.schedule" -}}
{{- if semverCompare ">= 1.22" .Capabilities.KubeVersion.Version -}}
{{ printf "CRON_TZ=%s %s" (include "code-server.timezone" . ) .Values.cronJob.schedule }}
{{- else -}}
{{ .Values.cronJob.schedule }}
{{- end -}}
{{- end }}
