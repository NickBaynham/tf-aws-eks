variable "do_token" {
  type        = string
  description = "The DigitalOcean token to use for authentication"
}

variable "cluster_name" {
  type        = string
  description = "The name to assign to the provisioned cluster"
}

variable "region" {
  type        = string
  description = "The target region for the cluster"
}

variable "k8s_version" {
  type        = string
  description = "The version for the cluster"
}