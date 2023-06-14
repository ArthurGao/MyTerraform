
// TODO variable dependencies

locals {
  docdb_name = "limberdocdb"  # must only contain alphanumeric characters and hyphens
}

module "limberdocdb" {
  source = "../../modules/aws/documentdb"
  # source = "git::ssh://git@bitbucket.org/meaningfultechnology/limberform.git//modules/aws/documentdb" # latest
  # source = "git::ssh://git@bitbucket.org/meaningfultechnology/limberform.git//modules/aws/documentdb?ref=v1.0.0"
  # source = "git::ssh://git@bitbucket.org/meaningfultechnology/limberform.git//modules/aws/documentdb?ref=HEAD"

  env_code            = var.env_code
  name                = local.docdb_name
  product_name        = var.product_name
  enable_params       = var.enable_params 

  notification_arn    = var.notification_arn
  vpc_id              = var.vpc_id
  vpc_database_subnet_group_id   = var.vpc_database_subnet_group_id
  vpc_database_subnet_group_name = var.vpc_database_subnet_group_name

  engine_version      = var.limberdocdb_engine_version
  instance_class      = var.limberdocdb_instance_class
  instance_count      = var.limberdocdb_instance_count

  dns_zone_name       = var.dns_zone_name
  dns_private_zone_id = var.dns_private_zone_id
}


# Allow DocumentDB Ingress from any in our VPC
resource "aws_security_group_rule" "in_vpc_limberdocdb" {
  description       = "VPC only DocumentDB Ingress to ${var.env_code}-${local.docdb_name} on TCP port ${module.limberdocdb.port} in our VPC"
  type              = "ingress"
  from_port         = module.limberdocdb.port
  to_port           = module.limberdocdb.port
  protocol          = "tcp"
  cidr_blocks       = [var.vpc_cidr]
  security_group_id = module.limberdocdb.security_group_id
  // tags not supported
}


# Allow DocumentDB Egress to any TCP port in our VPC
resource "aws_security_group_rule" "out_limberdocdb_vpc_any" {
  description       = "VPC only DocumentDB Egress from ${var.env_code}-${local.docdb_name} to any TCP port in our VPC"
  type              = "egress"
  from_port         = 0
  to_port           = 65535
  protocol          = "tcp"
  cidr_blocks       = [var.vpc_cidr]
  security_group_id = module.limberdocdb.security_group_id
  // tags not supported
}
