module "tf-azure" {
  source = "../modules/azure/tf-azure"
}

module "tf-aks" {
  source                               = "../modules/azure/tf-aks"
  cluster_default_node_pool_node_count = var.cluster_default_node_pool_node_count
  cluster_default_pool_name            = var.cluster_default_pool_name
  cluster_default_pool_vm_size         = var.cluster_default_pool_vm_size
  cluster_group_name                   = var.cluster_group_name
  cluster_location                     = var.cluster_location
  cluster_name                         = var.cluster_name
  environment                          = var.environment
}