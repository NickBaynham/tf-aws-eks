variable "project_id" {
  type        = string
  description = "The Id of the target project"
}

variable "region" {
  type        = string
  description = "The target region for the resources"
}

variable "cluster_name" {
  type        = string
  description = "The name of the cluster"
}

variable "vpc_name" {
  type        = string
  description = "The name of the VPC for the cluster"
}

variable "subnet_name" {
  type        = string
  description = "The subnet for the cluster"
}

variable "credentials" {
  type        = string
  description = "The path to the credentials to use to authenticate to GCP"
}

variable "node_count" {
  type        = number
  description = "The number of nodes to create in the cluster node pool"
}