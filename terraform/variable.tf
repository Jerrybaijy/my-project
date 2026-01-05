# --- Prefix ---
variable "prefix" {
  type        = string
  description = "Project prefix"
  default     = "my"
}

locals {
  code_repo_host = "${var.prefix}-${var.code_repo}-host"
  project_name   = "${var.prefix}-project"
  trigger_name   = "${var.prefix}-trigger"
}

# --- GCP ---
variable "project_id" {
  type        = string
  description = "GCP Project ID"
  default     = "project-60addf72-be9c-4c26-8db"
}

variable "region" {
  type        = string
  description = "GCP Region"
  default     = "asia-east2"
}

variable "zone" {
  type        = string
  description = "GCP Zone"
  default     = "asia-east2-a"
}

# --- Repo ---
variable "code_repo" {
  type        = string
  description = "Code repo"
  default     = "gitlab"
}

variable "repo_username" {
  type        = string
  description = "Repo username"
  default     = "jerrybai"
}

# --- Secrets ---
variable "gitlab_personal_access_token_api" {
  type        = string
  description = "GitLab Personal Access Token for API"
  sensitive = true
}

variable "gitlab_personal_access_token_read_api" {
  type        = string
  description = "GitLab Personal Access Token for Read"
  sensitive = true
}
