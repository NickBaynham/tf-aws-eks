variable "target_region" {
  type        = string
  description = "The target region to deploy the EKS Cluster"
}

variable "shared_credentials_file" {
  type        = string
  description = "The AWS credentials path"
}