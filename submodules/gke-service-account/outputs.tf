output "ksa_name" {
  value = kubernetes_service_account.ksa.metadata[0].name
}

output "ksa_namespace" {
  value = kubernetes_service_account.ksa.metadata[0].namespace
}

output "gsa_email" {
  value = google_service_account.gsa.email
}

output "gsa_id" {
  value = google_service_account.gsa.id
}
