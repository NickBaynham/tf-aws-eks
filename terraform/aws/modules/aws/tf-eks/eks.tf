resource "aws_eks_cluster" "eks-cluster" {
  name     = var.cluster_name
  role_arn = aws_iam_role.eks-iam-role.arn
  version  = var.cluster_version

  vpc_config {
    subnet_ids = [
      data.aws_subnet.eks_subnet_1.id,
      data.aws_subnet.eks_subnet_2.id
    ]
  }

  depends_on = [
    aws_iam_role.eks-iam-role,
  ]
}

resource "aws_eks_node_group" "worker-node-group" {
  cluster_name    = aws_eks_cluster.eks-cluster.name
  node_group_name = "eks-worker-nodes"
  node_role_arn   = aws_iam_role.workernodes.arn
  subnet_ids      = [data.aws_subnet.eks_subnet_1.id, data.aws_subnet.eks_subnet_2.id]
  instance_types  = [var.instance_type]

  scaling_config {
    desired_size = 1
    max_size     = 1
    min_size     = 1
  }

  depends_on = [
    aws_iam_role_policy_attachment.AmazonEKSWorkerNodePolicy,
    aws_iam_role_policy_attachment.AmazonEKS_CNI_Policy,
  ]
}
