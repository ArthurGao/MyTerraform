#
# Create Output Parameters for every infratructure module output
#


// ----- VPC -------------------------------


output "vpc_name" {
  value = module.infrastructure.vpc_name
  description = "The name of the VPC"
}
output "vpc_id" {
  value = module.infrastructure.vpc_id
  description = "The ID of the VPC"
}
output "vpc_arn" {
  value = module.infrastructure.vpc_arn
  description = "The Arn of the VPC"
}
output "vpc_cidr" {
  value = module.infrastructure.vpc_cidr
  description = "The CIDR block for the VPC"
}
output "vpc_azs" {
  value = module.infrastructure.vpc_azs
  description = "List of availability zones used (names)"  
}
output "vpc_nat_ips" {
  value = module.infrastructure.vpc_nat_ips
  description = "List of public Elastic IPs created for AWS NAT Gateway"  
}


// vpc public subnets
output "vpc_public_cidr" {
  value = module.infrastructure.vpc_public_cidr
  description = "CIDR block for all public subnets in VPC"
}

output "vpc_public_cidrs" {
  value = module.infrastructure.vpc_public_cidrs
  description = "List of CIDR blocks for all public subnets"
}

output "vpc_public_subnets" {
  value = module.infrastructure.vpc_public_subnets
  description = "List of all public subnet IDs"
}

// vpc private subnets
output "vpc_private_cidr" {
  value = module.infrastructure.vpc_private_cidr
  description = "CIDR block for all private subnets in VPC"
}

output "vpc_private_cidrs" {
  value = module.infrastructure.vpc_private_cidrs
  description = "List of CIDR blocks for all private subnets"
}

output "vpc_private_subnets" {
  value = module.infrastructure.vpc_private_subnets
  description = "List of all private subnet IDs"
}

// vpc database subnets
output "vpc_database_cidr" {
  value = module.infrastructure.vpc_database_cidr
  description = "CIDR block for all database subnets in VPC"
}

output "vpc_database_cidrs" {
  value = module.infrastructure.vpc_database_cidrs
  description = "List of CIDR blocks for all database subnets"
}

output "vpc_database_subnets" {
  value = module.infrastructure.vpc_database_subnets
  description = "List of all database subnet IDs"
}

output "vpc_database_subnet_group_id" {
  value = module.infrastructure.vpc_database_subnet_group_id
  description = "ID of database subnet group"
}

output "vpc_database_subnet_group_name" {
  value = module.infrastructure.vpc_database_subnet_group_name
  description = "Name of database subnet group"
}

// vpc elastic subnets
output "vpc_elastic_cidr" {
  value = module.infrastructure.vpc_elastic_cidr
  description = "CIDR block for all elasticache subnets subnets in VPC"
}

output "vpc_elastic_cidrs" {
  value = module.infrastructure.vpc_elastic_cidrs
  description = "List of CIDR blocks for all elasticache subnets"
}

output "vpc_elastic_subnets" {
  value = module.infrastructure.vpc_elastic_subnets
  description = "List of all elasticache subnets subnet IDs"
}

output "vpc_elastic_subnet_group_id" {
  value = module.infrastructure.vpc_elastic_subnet_group_id
  description = "ID of elasticache subnet group"
}

output "vpc_elastic_subnet_group_name" {
  value = module.infrastructure.vpc_elastic_subnet_group_name
  description = "Name of elasticache group"
}

// vpc redshift subnets
output "vpc_redshift_cidr" {
  value = module.infrastructure.vpc_redshift_cidr
  description = "CIDR block for all redshift subnets in VPC"
}

output "vpc_redshift_cidrs" {
  value = module.infrastructure.vpc_redshift_cidrs
  description = "List of CIDR blocks for all redshift subnets"
}

output "vpc_redshift_subnets" {
  value = module.infrastructure.vpc_redshift_subnets
  description = "List of all redshift subnet IDs"
}

output "vpc_redshift_subnet_group_id" {
  value = module.infrastructure.vpc_redshift_subnet_group_id
  description = "ID of redshift subnet group"
}
# NOTE; no module.infrastructure.vpc_redshift_subnet_group_name attribute
# output "vpc_redshift_subnet_group_name" {
#   value = module.infrastructure.vpc_redshift_subnet_group_name
#   description = "Name of redshift subnet group"
# }

// vpc intra subnets
output "vpc_intra_cidr" {
  value = module.infrastructure.vpc_intra_cidr
  description = "CIDR block for all intra subnets in VPC"
}

output "vpc_intra_cidrs" {
  value = module.infrastructure.vpc_intra_cidrs
  description = "List of CIDR blocks for all intra subnets"
}

output "vpc_intra_subnets" {
  value = module.infrastructure.vpc_intra_subnets
  description = "List of all intra subnet IDs"
}


// ----- DNS -------------------------------

output "dns_zone_name" {
  value = module.infrastructure.dns_zone_name
  description = "Domain name for the environment"
}

output "dns_public_zone_id" {
  value = module.infrastructure.dns_public_zone_id
  description = "Public DNS zone id for the the environment"
}

output "dns_private_zone_id" {
  value = module.infrastructure.dns_private_zone_id
  description = "Private DNS zone id for the the environment"
}


// ----- Bastion ---------------------------

output "bastion_name" {
  value = module.infrastructure.bastion_name
  description = "Name of the bastion host as registerd in the public DNS"
}

output "bastion_security_group_id" {
  value = module.infrastructure.bastion_security_group_id
  description = "Security Group for the bastion host"
}




