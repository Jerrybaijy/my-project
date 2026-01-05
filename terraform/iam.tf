# 获取当前 Project ID
data "google_project" "project" {}

resource "google_secret_manager_secret_iam_member" "cb_sa_accessor" {
  for_each = {
    "api_token"  = google_secret_manager_secret.gitlab_api_token.id
    "read_token" = google_secret_manager_secret.gitlab_read_api_token.id
    "webhook"    = google_secret_manager_secret.webhook_secret.id
  }

  project   = var.project_id
  secret_id = each.value
  role      = "roles/secretmanager.secretAccessor"
  member    = "serviceAccount:service-${data.google_project.project.number}@gcp-sa-cloudbuild.iam.gserviceaccount.com"
}
