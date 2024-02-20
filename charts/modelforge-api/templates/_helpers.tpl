{{/* Generate basic labels */}}
{{- define "modelforge-api.labels" -}}
app.kubernetes.io/name: {{ .Values.serviceName }}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version | replace "+" "_" }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Values.appVersion }}
app.kubernetes.io/component: proxy-api
app.kubernetes.io/part-of: modelforge
{{- end -}}
