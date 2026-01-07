# 调用 gitlab-repo 模块
module "gitlab-repo" {
  source = "./modules/gitlab-repo"

  # 向局部变量传入全局变量的值
  prefix                                = var.prefix
  project_id                            = var.project_id
  region                                = var.region
  gitlab_personal_access_token_api      = var.gitlab_personal_access_token_api
  gitlab_personal_access_token_read_api = var.gitlab_personal_access_token_read_api
}
