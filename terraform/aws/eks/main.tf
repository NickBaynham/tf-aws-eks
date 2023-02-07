module "tf-eks" {
  source                  = "../modules/aws/tf-eks"
  shared_credentials_file = var.shared_credentials_file
  cluster_name            = var.cluster_name
  instance_type           = var.instance_type
  cluster_version         = var.cluster_version
}