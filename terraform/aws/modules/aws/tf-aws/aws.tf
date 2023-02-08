provider "aws" {
  region                   = var.target_region
  shared_credentials_files = [var.shared_credentials_file]
  profile                  = "default"
}
