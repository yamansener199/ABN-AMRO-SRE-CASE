export AWS_PROFILE="karavana"
eksctl utils associate-iam-oidc-provider --region=eu-central-1 --cluster=case-eks-cluster --approve
eksctl create iamserviceaccount \
  --region eu-central-1 \
  --name ebs-csi-controller-sa \
  --namespace kube-system \
  --cluster case-eks-cluster \
  --attach-policy-arn arn:aws:iam::aws:policy/service-role/AmazonEBSCSIDriverPolicy \
  --approve \
  --role-only \
  --role-name AmazonEKS_EBS_CSI_DriverRole
eksctl create addon --name aws-ebs-csi-driver --cluster case-eks-cluster --service-account-role-arn arn:aws:iam::$(aws sts get-caller-identity --query Account --output text):role/AmazonEKS_EBS_CSI_DriverRole --force
