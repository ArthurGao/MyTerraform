
terraform {
  required_version = ">= 1.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.52.0, < 4.0.0"
    }
    cloudinit = {
      source  = "hashicorp/cloudinit"
      version = "~> 2.2.0"
    }
  }

  # No variables allowed! But can use backend config file or arguments on init
  backend "s3" {
    // See backend.auto.tfvars,
    // run terraform init -backend-config=backend.auto.tfvars
  }
}

provider "aws" {
  profile = "default"
  region  = var.region

  // See backend.auto.tfvars,
  assume_role {
    role_arn = var.role_arn
    session_name = var.session_name
  }
}

provider "aws" {
  alias = "virginia"
  region = "us-east-1"
  profile = "default"

  // See backend.auto.tfvars,
  assume_role {
    role_arn = var.role_arn
    session_name = var.session_name
  }
}


// ================================================

module "stack" {
  # source = "git::ssh://git@bitbucket.org/meaningfultechnology/limberform.git//stacks/ecs-fargate-four" # latest
  # source = "git::ssh://git@bitbucket.org/meaningfultechnology/limberform.git//stacks/ecs-fargate-four?ref=v1.0.0"
  # source = "git::ssh://git@bitbucket.org/meaningfultechnology/limberform.git//stacks/ecs-fargate-four?ref=HEAD"
  source = "../../stacks/ecs-fargate-four"

  providers = {
    aws.regional = aws
    aws.global   = aws.virginia
  }

  count = 0

  env_code         = var.env_code
  product_name     = var.product_name
  enable_params    = true 

  notify_email     = var.notify_email

  use_default_vpc  = var.use_default_vpc
  cidr             = var.cidr
  azs              = var.azs
  base_zone_id     = data.aws_ssm_parameter.domain_zone_id.value # "Z0050188Z7P1Z0E77BO5"
  base_domain_name = data.aws_ssm_parameter.domain_zone_name.value # "dev.limbergraph.com"
  sub_domain_name  = var.sub_domain_name
  enable_bastion   = true
  ec2_key_name     = data.aws_ssm_parameter.ec2_key_name.value
  ec2_key_param    = data.aws_ssm_parameter.ec2_key_private_pem.name
  ssh_from_cidrs   = var.ssh_from_cidrs

  enable_public_cluster = true
  // Identity Cluster
  identity_host_name = "id"
  // Gateway ECS Cluster
  gateway_host_name = "api"
  // Public ECS Cluster
  public_host_name = "public"
  // Private ECS Cluster
  private_host_name = "services"

}
