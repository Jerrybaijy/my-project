# 若想让 Argo CD 从 GKE 集群访问 GAR，则需要:
  
  # Argo CD 侧
    # 在安装 Argo CD 时，为 argocd-repo-server KSA 添加注解，绑定到 Workload Identity GSA。
    # 创建 Argo CD 访问 GAR 的 Secret
  
  # GKE 侧
    # 为集群开启 Workload Identity
    # 创建 Workload Identity GSA 并为其分配 Artifact Registry Reader 角色
    # 允许 argocd-repo-server KSA 以 Workload Identity GSA 身份运行
    # 详见 GKE 模块中的 iam.tf 文件