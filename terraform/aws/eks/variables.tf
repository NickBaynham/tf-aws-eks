variable "cluster_name" {
  type        = string
  description = "the name of the EKS cluster to provision"
}

variable "cluster_version" {
  type        = string
  description = "The supported EKS Kubernetes Version target of the cluster"
}

variable "instance_type" {
  type        = string
  description = "The instance type used to provision the EKS nodes"
}

variable "shared_credentials_file" {
  type        = string
  description = "The path to your ssh public key"
}

variable "vpc_cidr" {
  type        = string
  description = "The CIDR for the Virtual Private Cloud"
  default     = "10.0.0.0/16"
}

variable "subnet_1_cidr" {
  type        = string
  description = "The CIDR value for subnet 1"
  default     = "10.0.0.0/24"
}

variable "region" {
  type        = string
  description = "The target region for the EKS deployment"
  default     = "us-east-2"
}

