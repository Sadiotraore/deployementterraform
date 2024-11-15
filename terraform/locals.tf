locals {
  region    = "eu-west-1"
  ami       = "ami-08dcc81a13875f81c"
  # workspace = contains(keys(local.environment), terraform.workspace) ? terraform.workspace : null

  # env_vars = local.environment[local.workspace]

  environment = {
    dev = {
      instance_type = "t3.micro"
    }
    stag = {
      instance_type = "t3.medium"
    }
  }

  tags = {
    Name       = "module-2-provisioning"
    Owner      = "Sadio"
    Module     = "devops-essentials"
    GitPath    = ":sadiotraore/module-4-provisioning"
    DeployedBy = "terraform"
  }

}