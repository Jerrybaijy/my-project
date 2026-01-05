# 获取当前 Project ID
data "google_project" "project" {}

# 授予 Cloud Build 服务账号访问 Secret Manager 的权限
resource "google_secret_manager_secret_iam_member" "cb_sa_accessor" {
  for_each = {
    "api_token"  = google_secret_manager_secret.gitlab_api_token.secret_id
    "read_token" = google_secret_manager_secret.gitlab_read_api_token.secret_id
    "webhook"    = google_secret_manager_secret.webhook_secret.secret_id
  }

  project   = var.project_id
  secret_id = each.value
  role      = "roles/secretmanager.secretAccessor"
  member    = "serviceAccount:service-${data.google_project.project.number}@gcp-sa-cloudbuild.iam.gserviceaccount.com"
}
