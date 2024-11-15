# ------------------------
# Terraform Configuration.
# ------------------------

# Description: configure AWS terraform and backend.
# Terraform registry: https://registry.terraform.io/providers/hashicorp/aws/latest/docs
terraform {
  required_version = "~> 1.9.7"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}