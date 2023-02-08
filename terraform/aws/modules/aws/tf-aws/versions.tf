terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.52"
    }
    kubernetes = {
      source = "hashicorp/kubernetes"
    }
    helm = {
      source = "hashicorp/helm"
    }
    null = {
      version = "~> 3.1.1"
    }
  }
  required_version = "~> 1.3.4, < 2.0"
}