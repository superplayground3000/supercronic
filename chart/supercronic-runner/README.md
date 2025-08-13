# supercronic-runner (Helm Chart)

Run cron-like workloads using Supercronic in a single-replica Deployment.
- Config changes trigger rollouts via checksum annotations
- Prometheus metrics exposed on configurable port (default 9746)
- Init container validates crontab with `supercronic -test`
- Secure defaults: non-root, read-only root FS, no privilege escalation

See `values.yaml` for configuration.
