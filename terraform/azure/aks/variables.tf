variable "cluster_location" {
  type        = string
  description = "The location of the AKS cluster."
}

variable "cluster_name" {
  type        = string
  description = "The name of the AKS cluster."
}

variable "cluster_group_name" {
  type        = string
  description = "The cluster group name"
}

variable "cluster_default_pool_name" {
  type        = string
  description = "The cluster default pool name"
}

variable "cluster_default_pool_vm_size" {
  type        = string
  description = "The cluster default pool vm size"
}

variable "cluster_default_node_pool_node_count" {
  type        = number
  description = "The cluster default node pool node count"
}

variable "environment" {
  type        = string
  description = "Environment: development, qa, staging, uat, production"
}