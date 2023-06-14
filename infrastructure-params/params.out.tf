#
# Create SSM Output Parameters for every infratructure module output
#


// ----- Notification Topic ----------------

resource "aws_ssm_parameter" "notification_name" {
  name  = "/env/${var.env_code}/notification/name"
  type  = "String"  
  value = module.infrastructure.notification_name
  description = "Alarm notification topic name."
}


resource "aws_ssm_parameter" "notification_arn" {
  name  = "/env/${var.env_code}/notification/arn"
  type  = "String"  
  value = module.infrastructure.notification_arn
  description = "Alarm notification topic ARN."
}


// ----- VPC -------------------------------

resource "aws_ssm_parameter" "vpc_name" {
  name  = "/env/${var.env_code}/infrastructure/infrastructure/vpc/name"
  type  = "String"  
  value = module.infrastructure.vpc_name
  description = "The name of the VPC"
}
resource "aws_ssm_parameter" "vpc_id" {
  name  = "/env/${var.env_code}/infrastructure/infrastructure/vpc/id"
  type  = "String"  
  value = module.infrastructure.vpc_id
  description = "The ID of the VPC"
}
resource "aws_ssm_parameter" "vpc_arn" {
  name  = "/env/${var.env_code}/infrastructure/infrastructure/vpc/arn"
  type  = "String"  
  value = module.infrastructure.vpc_arn
  description = "The Arn of the VPC"
}
resource "aws_ssm_parameter" "vpc_cidr" {
  name  = "/env/${var.env_code}/infrastructure/infrastructure/vpc/cidr"
  type  = "String"  
  value = module.infrastructure.vpc_cidr
  description = "The CIDR block for the VPC"
}
resource "aws_ssm_parameter" "vpc_azs" {
  name  = "/env/${var.env_code}/infrastructure/infrastructure/vpc/azs"
  type  = "StringList"  
  value = join(",", module.infrastructure.vpc_azs)
  description = "List of availability zones used (names)"  
}
resource "aws_ssm_parameter" "vpc_nat_ips" {
  name  = "/env/${var.env_code}/infrastructure/infrastructure/vpc/nat_ips"
  type  = "StringList"  
  value = join(",", module.infrastructure.vpc_nat_ips)
  description = "List of public Elastic IPs created for AWS NAT Gateway"  
}


// vpc public subnets
resource "aws_ssm_parameter" "vpc_public_cidr" {
  name  = "/env/${var.env_code}/infrastructure/infrastructure/vpc/public/cidr"
  type  = "String"
  value = module.infrastructure.vpc_public_cidr
  description = "CIDR block for all public subnets in VPC"
}

resource "aws_ssm_parameter" "vpc_public_cidrs" {
  name  = "/env/${var.env_code}/infrastructure/infrastructure/vpc/public/cidrs"
  type  = "StringList"  
  value = join(",", module.infrastructure.vpc_public_cidrs)
  description = "List of CIDR blocks for all public subnets"
}

resource "aws_ssm_parameter" "vpc_public_subnets" {
  name  = "/env/${var.env_code}/infrastructure/infrastructure/vpc/public/subnets"
  type  = "StringList"  
  value = join(",", module.infrastructure.vpc_public_subnets)
  description = "List of all public subnet IDs"
}


// vpc private subnets
resource "aws_ssm_parameter" "vpc_private_cidr" {
  name  = "/env/${var.env_code}/infrastructure/infrastructure/vpc/private/cidr"
  type  = "String"
  value = module.infrastructure.vpc_private_cidr
  description = "CIDR block for all private subnets in VPC"
}

resource "aws_ssm_parameter" "vpc_private_cidrs" {
  name  = "/env/${var.env_code}/infrastructure/infrastructure/vpc/private/cidrs"
  type  = "StringList"  
  value = join(",", module.infrastructure.vpc_private_cidrs)
  description = "List of CIDR blocks for all private subnets"
}

resource "aws_ssm_parameter" "vpc_private_subnets" {
  name  = "/env/${var.env_code}/infrastructure/infrastructure/vpc/private/subnets"
  type  = "StringList"  
  value = join(",", module.infrastructure.vpc_private_subnets)
  description = "List of all private subnet IDs"
}


// vpc database subnets
resource "aws_ssm_parameter" "vpc_database_cidr" {
  name  = "/env/${var.env_code}/infrastructure/infrastructure/vpc/database/cidr"
  type  = "String"
  value = module.infrastructure.vpc_database_cidr
  description = "CIDR block for all database subnets in VPC"
}

resource "aws_ssm_parameter" "vpc_database_cidrs" {
  name  = "/env/${var.env_code}/infrastructure/infrastructure/vpc/database/cidrs"
  type  = "StringList"  
  value = join(",", module.infrastructure.vpc_database_cidrs)
  description = "List of CIDR blocks for all database subnets"
}

resource "aws_ssm_parameter" "vpc_database_subnets" {
  name  = "/env/${var.env_code}/infrastructure/infrastructure/vpc/database/subnets"
  type  = "StringList"  
  value = join(",", module.infrastructure.vpc_database_subnets)
  description = "List of all database subnet IDs"
}

resource "aws_ssm_parameter" "vpc_database_subnet_group_id" {
  name  = "/env/${var.env_code}/infrastructure/infrastructure/vpc/database/subnetgroup/id"
  type  = "String"
  value = module.infrastructure.vpc_database_subnet_group_id
  description = "ID of database subnet group"
}

resource "aws_ssm_parameter" "vpc_database_subnet_group_name" {
  name  = "/env/${var.env_code}/infrastructure/infrastructure/vpc/database/subnetgroup/name"
  type  = "String"
  value = module.infrastructure.vpc_database_subnet_group_name
  description = "Name of database subnet group"
}


// vpc elastic subnets
resource "aws_ssm_parameter" "vpc_elastic_cidr" {
  name  = "/env/${var.env_code}/infrastructure/infrastructure/vpc/elastic/cidr"
  type  = "String"
  value = module.infrastructure.vpc_elastic_cidr
  description = "CIDR block for all elasticache_subnets subnets in VPC"
}

resource "aws_ssm_parameter" "vpc_elastic_cidrs" {
  name  = "/env/${var.env_code}/infrastructure/infrastructure/vpc/elastic/cidrs"
  type  = "StringList"  
  value = join(",", module.infrastructure.vpc_elastic_cidrs)
  description = "List of CIDR blocks for all elastic subnets"
}

resource "aws_ssm_parameter" "vpc_elastic_subnets" {
  name  = "/env/${var.env_code}/infrastructure/infrastructure/vpc/elastic/subnets"
  type  = "StringList"  
  value = join(",", module.infrastructure.vpc_elastic_subnets)
  description = "List of all elasticache_subnets subnet IDs"
}

resource "aws_ssm_parameter" "vpc_elastic_subnet_group_id" {
  name  = "/env/${var.env_code}/infrastructure/infrastructure/vpc/elastic/subnetgroup/id"
  type  = "String"
  value = module.infrastructure.vpc_elastic_subnet_group_id
  description = "ID of elasticache subnet group"
}

resource "aws_ssm_parameter" "vpc_elastic_subnet_group_name" {
  name  = "/env/${var.env_code}/infrastructure/infrastructure/vpc/elastic/subnetgroup/name"
  type  = "String"
  value = module.infrastructure.vpc_elastic_subnet_group_name
  description = "Name of elasticache group"
}


// vpc redshift subnets
resource "aws_ssm_parameter" "vpc_redshift_cidr" {
  name  = "/env/${var.env_code}/infrastructure/infrastructure/vpc/redshift/cidr"
  type  = "String"
  value = module.infrastructure.vpc_redshift_cidr
  description = "CIDR block for all redshift subnets in VPC"
}

resource "aws_ssm_parameter" "vpc_redshift_cidrs" {
  name  = "/env/${var.env_code}/infrastructure/infrastructure/vpc/redshift/cidrs"
  type  = "StringList"  
  value = join(",", module.infrastructure.vpc_redshift_cidrs)
  description = "List of CIDR blocks for all redshift subnets"
}

resource "aws_ssm_parameter" "vpc_redshift_subnets" {
  name  = "/env/${var.env_code}/infrastructure/infrastructure/vpc/redshift/subnets"
  type  = "StringList"  
  value = join(",", module.infrastructure.vpc_redshift_subnets)
  description = "List of all redshift subnet IDs"
}

resource "aws_ssm_parameter" "vpc_redshift_subnet_group_id" {
  name  = "/env/${var.env_code}/infrastructure/infrastructure/vpc/redshift/subnetgroup/id"
  type  = "String"
  value = module.infrastructure.vpc_redshift_subnet_group_id
  description = "ID of redshift subnet group"
}

# NOTE; no module.infrastructure.vpc_redshift_subnet_group_name attribute
# resource "aws_ssm_parameter" "vpc_redshift_subnet_group_name" {
#   name  = "/env/${var.env_code}/infrastructure/infrastructure/vpc/redshift/subnetgroup/name"
#   type  = "String"
#   value = module.infrastructure.vpc_redshift_subnet_group_name
#   description = "Name of redshift subnet group"
# }


// vpc intra subnets
resource "aws_ssm_parameter" "vpc_intra_cidr" {
  name  = "/env/${var.env_code}/infrastructure/infrastructure/vpc/intra/cidr"
  type  = "String"
  value = module.infrastructure.vpc_intra_cidr
  description = "CIDR block for all intra subnets in VPC"
}

resource "aws_ssm_parameter" "vpc_intra_cidrs" {
  name  = "/env/${var.env_code}/infrastructure/infrastructure/vpc/intra/cidrs"
  type  = "StringList"  
  value = join(",", module.infrastructure.vpc_intra_cidrs)
  description = "List of CIDR blocks for all intra subnets"
}

resource "aws_ssm_parameter" "vpc_intra_subnets" {
  name  = "/env/${var.env_code}/infrastructure/infrastructure/vpc/intra/subnets"
  type  = "StringList"  
  value = join(",", module.infrastructure.vpc_intra_subnets)
  description = "List of all intra subnet IDs"
}


// ----- DNS -------------------------------

resource "aws_ssm_parameter" "dns_zone_name" {
  name  = "/env/${var.env_code}/infrastructure/infrastructure/dns/zone/name"
  type  = "String"  
  value = module.infrastructure.dns_zone_name
  description = "Domain name for the environment"
}

resource "aws_ssm_parameter" "dns_public_zone_id" {
  name  = "/env/${var.env_code}/infrastructure/infrastructure/dns/zone/publicid"
  type  = "String"  
  value = module.infrastructure.dns_public_zone_id
  description = "Public DNS zone id for the the environment"
}

resource "aws_ssm_parameter" "dns_private_zone_id" {
  name  = "/env/${var.env_code}/infrastructure/infrastructure/dns/zone/privateid"
  type  = "String"  
  value = module.infrastructure.dns_private_zone_id
  description = "Private DNS zone id for the the environment"
}


// ----- Bastion ---------------------------

resource "aws_ssm_parameter" "bastion_name" {
  name  = "/env/${var.env_code}/infrastructure/infrastructure/bastion/name"
  type  = "String"  
  value = module.infrastructure.bastion_name
  description = "Name of the bastion host as registerd in the public DNS"
}

resource "aws_ssm_parameter" "bastion_security_group_id" {
  name  = "/env/${var.env_code}/infrastructure/infrastructure/bastion/sgid"
  type  = "String"  
  value = module.infrastructure.bastion_security_group_id
  description = "Security Group for the bastion host"
}



