terraform {
  required_version = "~> 1.9.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.40"
    }
  }

  # backend "s3" {
  #   bucket         = "your-terraform-state-bucket"
  #   key            = "path/to/your/terraform.tfstate"
  #   region         = var.aws_region
  #   dynamodb_table = "your-terraform-lock-table"
  # }
}