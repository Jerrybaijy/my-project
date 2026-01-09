# 若想让后端连接 Cloud SQL，则需要:
  # 为集群开启 Workload Identity
  # 创建 Workload Identity GSA 并为其分配 Cloud SQL Client 角色
  # 创建 App KSA 并绑定到 Workload Identity GSA
  # 允许 App KSA 以 Workload Identity GSA 身份运行
  # 详见 GKE 模块中的 iam.tf 文件
