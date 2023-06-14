
// TODO variable dependencies

locals {
  apis_name = "apis"  # must only contain alphanumeric characters and hyphens
}


module "api2gateway" {
  # source = "git::ssh://git@bitbucket.org/meaningfultechnology/limberform.git//modules/aws/api2gateway" # latest
  # source = "git::ssh://git@bitbucket.org/meaningfultechnology/limberform.git//modules/aws/api2gateway?ref=v1.0.0"
  # source = "git::ssh://git@bitbucket.org/meaningfultechnology/limberform.git//modules/aws/api2gateway?ref=HEAD"
  source = "../../modules/aws/api2gateway"

  env_code            = var.env_code
  name                = local.apis_name
  product_name        = var.product_name
  enable_params       = var.enable_params 

  vpc_id              = var.vpc_id
  vpc_subnet_ids      = var.vpc_private_subnets
}


# Allow API Gateway Ingress to any in our VPC
resource "aws_security_group_rule" "in_api2gateway_vpc_any" {
  description       = "VPC only API Gateway Ingress from ${var.env_code}-${local.apis_name} to any TCP port in our VPC"
  type              = "ingress"
  from_port         = 0
  to_port           = 65535
  protocol          = "tcp"
  cidr_blocks       = [var.vpc_cidr]
  security_group_id = module.api2gateway.security_group_id
  // tags not supported
}


# Allow VPC Egress to any TCP port on API Gateway
resource "aws_security_group_rule" "out_vpc_api2gateway_any" {
  description       = "VPC only API Gateway Egress to ${var.env_code}-${local.apis_name} from any TCP port in our VPC"
  type              = "egress"
  from_port         = 0
  to_port           = 65535
  protocol          = "tcp"
  cidr_blocks       = [var.vpc_cidr]
  security_group_id = module.api2gateway.security_group_id
  // tags not supported
}


