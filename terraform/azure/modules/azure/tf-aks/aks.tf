resource "azurerm_kubernetes_cluster" "learning-cluster" {

  location            = var.cluster_location
  name                = var.cluster_name
  resource_group_name = var.cluster_group_name
  dns_prefix          = "${var.cluster_name}-dns01"
  default_node_pool {
    name       = var.cluster_default_pool_name
    vm_size    = var.cluster_default_pool_vm_size
    node_count = var.cluster_default_node_pool_node_count
  }
  identity {
    type = "SystemAssigned"
  }
  tags = {
    Environment = var.environment
  }
}

resource "azurerm_kubernetes_cluster_node_pool" "aks-node-pol" {
  name                  = var.node-pool-name
  kubernetes_cluster_id = azurerm_kubernetes_cluster.learning-cluster.id
  vm_size               = var.cluster_default_pool_vm_size
  node_count            = var.cluster_default_node_pool_node_count
  enable_auto_scaling   = true
  tags = {
    Environment = var.environment
  }
}