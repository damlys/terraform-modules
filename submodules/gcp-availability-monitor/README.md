Example:

```
module "grafana_availability_monitor" {
  source = "github.com/damlys/terraform-modules//submodules/gcp-availability-monitor?ref=main"

  project = google_project.example.project_id

  request_host     = "grafana.example.com"
  request_path     = "/api/health"
  response_content = "\"database\": \"ok\","

  notification_emails = [
    "bob@example.com",
  ]
}
```
