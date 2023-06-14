
// TODO variable dependencies


locals {
  graph_name = "limbergraph"  # must only contain alphanumeric characters and hyphens
}

module "limbergraph" {
  source = "../../modules/aws/neptune"
  # source = "git::ssh://git@bitbucket.org/meaningfultechnology/limberform.git//modules/aws/neptune" # latest
  # source = "git::ssh://git@bitbucket.org/meaningfultechnology/limberform.git//modules/aws/neptune?ref=v1.0.0"
  # source = "git::ssh://git@bitbucket.org/meaningfultechnology/limberform.git//modules/aws/neptune?ref=HEAD"

  env_code            = var.env_code
  name                = local.graph_name
  product_name        = var.product_name
  enable_params       = var.enable_params 

  notification_arn    = var.notification_arn
  vpc_id              = var.vpc_id
  vpc_database_subnet_group_id   = var.vpc_database_subnet_group_id
  vpc_database_subnet_group_name = var.vpc_database_subnet_group_name

  engine_version      = var.limbergraph_engine_version
  instance_class      = var.limbergraph_instance_class
  instance_count      = var.limbergraph_instance_count
  query_timeout       = var.limbergraph_query_timeout

  dns_zone_name       = var.dns_zone_name
  dns_private_zone_id = var.dns_private_zone_id
}


# Allow Neptune Ingress from any in our VPC
resource "aws_security_group_rule" "in_vpc_limbergraph" {
  description       = "VPC only Neptune Ingress to ${var.env_code}-${local.graph_name} on TCP port ${module.limbergraph.port} in our VPC"
  type              = "ingress"
  from_port         = module.limbergraph.port
  to_port           = module.limbergraph.port
  protocol          = "tcp"
  cidr_blocks       = [var.vpc_cidr]
  security_group_id = module.limbergraph.security_group_id
  // tags not supported
}


# Allow Neptune Egress to any TCP port in our VPC
resource "aws_security_group_rule" "out_limbergraph_vpc_any" {
  description       = "VPC only Neptune Egress from ${var.env_code}-${local.graph_name} to any TCP port in our VPC"
  type              = "egress"
  from_port         = 0
  to_port           = 65535
  protocol          = "tcp"
  cidr_blocks       = [var.vpc_cidr]
  security_group_id = module.limbergraph.security_group_id
  // tags not supported
}

