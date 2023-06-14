
// TODO variable dependencies


locals {
  postgres_rdb_name = "limberrdb"
}

module "limberrdb" {
  source = "../../modules/aws/postgres-rds"
  # source = "git::ssh://git@bitbucket.org/meaningfultechnology/limberform.git//modules/aws/postgres-rds" # latest
  # source = "git::ssh://git@bitbucket.org/meaningfultechnology/limberform.git//modules/aws/postgres-rds?ref=v1.0.0"
  # source = "git::ssh://git@bitbucket.org/meaningfultechnology/limberform.git//modules/aws/postgres-rds?ref=HEAD"

  env_code         = var.env_code
  name             = local.postgres_rdb_name
  product_name     = var.product_name
  enable_params    = var.enable_params 

  notification_arn = var.notification_arn
  vpc_id = var.vpc_id
  vpc_database_subnet_group_id = var.vpc_database_subnet_group_id
  vpc_database_subnet_group_name = var.vpc_database_subnet_group_name

  // NOTE: more PostgreSQL RDS configuration variables available

  dns_zone_name = var.dns_zone_name
  dns_private_zone_id = var.dns_private_zone_id
}


# Allow PostgreSQL Ingress from any in our VPC
resource "aws_security_group_rule" "in_vpc_postgresql" {
  description       = "VPC only PostgreSQL Ingress to ${var.env_code}-${local.postgres_rdb_name} on TCP port ${module.limberrdb.port} in our VPC"
  type              = "ingress"
  from_port         = module.limberrdb.port
  to_port           = module.limberrdb.port
  protocol          = "tcp"
  cidr_blocks       = [var.vpc_cidr]
  security_group_id = module.limberrdb.security_group_id
  // tags not supported
}


# Allow Egress to any TCP port in our VPC
resource "aws_security_group_rule" "out_postgresql_vpc_any" {
  description       = "VPC only Egress from ${var.env_code}-${local.postgres_rdb_name} to any TCP port in our VPC"
  type              = "egress"
  from_port         = 0
  to_port           = 65535
  protocol          = "tcp"
  cidr_blocks       = [var.vpc_cidr]
  security_group_id = module.limberrdb.security_group_id
  // tags not supported
}
