resource "google_service_account" "gsa" {
  account_id = var.name
  project    = var.project
}

resource "kubernetes_service_account" "ksa" {
  metadata {
    name      = var.name
    namespace = var.namespace
    annotations = {
      "iam.gke.io/gcp-service-account" = google_service_account.gsa.email
    }
  }
}

resource "google_service_account_iam_member" "binding" {
  service_account_id = google_service_account.gsa.id
  role               = "roles/iam.workloadIdentityUser"
  member             = "serviceAccount:${google_service_account.gsa.project}.svc.id.goog[${kubernetes_service_account.ksa.metadata[0].namespace}/${kubernetes_service_account.ksa.metadata[0].name}]"
}
