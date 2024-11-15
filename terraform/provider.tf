# ------------------------
# Providers configuration.
# ------------------------

# Description: call AWS terraform provider for eu-west-1 region.
# Terraform registry: https://registry.terraform.io/providers/hashicorp/aws/latest/docs
provider "aws" {
  region = local.region
  
  default_tags {
    tags = local.tags
  }
}
