variable "kubeconfig" {
  type = string
  description = "The path to the local kube configuration file"
  default = "~/.kube/config"
}

variable "cluster_name" {
  type = string
  description = "The name of the cluster to create the dashboard for"
}

variable "kubectl_id" {
  type = string
  description = "The Id of the null resource command to update the configuration"
}