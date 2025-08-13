{{- define "supercronic.fullname" -}}
{{- printf "%s-%s" .Release.Name "supercronic-runner" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "supercronic.crontabChecksum" -}}
{{ include (print $.Template.BasePath "/configmap-crontab.yaml") . | sha256sum }}
{{- end -}}

{{- define "supercronic.scriptsChecksum" -}}
{{ include (print $.Template.BasePath "/configmap-scripts.yaml") . | sha256sum }}
{{- end -}}
