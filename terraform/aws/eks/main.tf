module "aws" {
  source                  = "../modules/aws/tf-aws"
  target_region           = var.region
  shared_credentials_file = var.shared_credentials_file
}

module "tf-eks" {
  source          = "../modules/aws/tf-eks"
  target_region   = var.region
  cluster_name    = var.cluster_name
  cluster_version = var.cluster_version
  instance_type   = var.instance_type
}

module "tf-dashboard" {
  source       = "../modules/aws/tf-dashboard"
  cluster_name = module.tf-eks.cluster-name # Ensures that the cluster is created before the dashboard
  kubectl_id   = module.tf-eks.kubectl
}