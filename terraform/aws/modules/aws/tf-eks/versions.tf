terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.52"
    }
    null = {
      version = "~> 3.1.1"
    }
  }
  required_version = "~> 1.3.4, < 2.0"
}