resource "aws_eks_cluster" "case-eks" {
 name = "case-eks-cluster"
 role_arn = aws_iam_role.eks-iam-role.arn
 version  = "1.27"

 vpc_config {
  subnet_ids = ["subnet-08425f773f2d4a055", "subnet-093ee1ff59056f956"]
 }

 depends_on = [
  aws_iam_role.eks-iam-role,
 ]
}

resource "aws_eks_node_group" "node-ec2" {
  cluster_name    = aws_eks_cluster.case-eks.name
  node_group_name = "t3_large-node_group"
  node_role_arn   = aws_iam_role.workernodes.arn
  subnet_ids = ["subnet-08425f773f2d4a055", "subnet-093ee1ff59056f956"]

  scaling_config {
    desired_size = 2
    max_size     = 3
    min_size     = 1
  }

  ami_type       = "AL2_x86_64"
  instance_types = ["t3a.large"]
  capacity_type  = "ON_DEMAND"
  disk_size      = 20

  depends_on = [
    aws_iam_role_policy_attachment.AmazonEKSWorkerNodePolicy,
    aws_iam_role_policy_attachment.AmazonEC2ContainerRegistryReadOnly,
    aws_iam_role_policy_attachment.AmazonEKS_CNI_Policy
  ]
}