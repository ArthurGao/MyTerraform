
// ----- Notification Topic ----------------


output "notification_topic_name" {
  value = module.stack.notification_topic_name
  description = "Alarm notification topic name."
}

output "notification_topic_arn" {
  value = module.stack.notification_topic_arn
  description = "Alarm notification topic ARN."
}


// ----- VPC -------------------------------


output "vpc_name" {
  value = module.stack.vpc_name
  description = "The name of the VPC"
}
output "vpc_id" {
  value = module.stack.vpc_id
  description = "The ID of the VPC"
}
output "vpc_arn" {
  value = module.stack.vpc_arn
  description = "The Arn of the VPC"
}
output "vpc_cidr" {
  value = module.stack.vpc_cidr
  description = "The CIDR block for the VPC"
}
output "vpc_azs" {
  value = module.stack.vpc_azs
  description = "List of availability zones used (names)"  
}
output "vpc_nat_ips" {
  value = module.stack.vpc_nat_ips
  description = "List of public Elastic IPs created for AWS NAT Gateway"  
}


// vpc public subnets
output "vpc_public_cidr" {
  value = module.stack.vpc_public_cidr
  description = "CIDR block for all public subnets in VPC"
}

output "vpc_public_cidrs" {
  value = module.stack.vpc_public_cidrs
  description = "List of CIDR blocks for all public subnets"
}

output "vpc_public_subnets" {
  value = module.stack.vpc_public_subnets
  description = "List of all public subnet IDs"
}

// vpc private subnets
output "vpc_private_cidr" {
  value = module.stack.vpc_private_cidr
  description = "CIDR block for all private subnets in VPC"
}

output "vpc_private_cidrs" {
  value = module.stack.vpc_private_cidrs
  description = "List of CIDR blocks for all private subnets"
}

output "vpc_private_subnets" {
  value = module.stack.vpc_private_subnets
  description = "List of all private subnet IDs"
}

// vpc database subnets
output "vpc_database_cidr" {
  value = module.stack.vpc_database_cidr
  description = "CIDR block for all database subnets in VPC"
}

output "vpc_database_cidrs" {
  value = module.stack.vpc_database_cidrs
  description = "List of CIDR blocks for all database subnets"
}

output "vpc_database_subnets" {
  value = module.stack.vpc_database_subnets
  description = "List of all database subnet IDs"
}

output "vpc_database_subnet_group_id" {
  value = module.stack.vpc_database_subnet_group_id
  description = "ID of database subnet group"
}

output "vpc_database_subnet_group_name" {
  value = module.stack.vpc_database_subnet_group_name
  description = "Name of database subnet group"
}

// vpc elastic subnets
output "vpc_elastic_cidr" {
  value = module.stack.vpc_elastic_cidr
  description = "CIDR block for all elasticache subnets subnets in VPC"
}

output "vpc_elastic_cidrs" {
  value = module.stack.vpc_elastic_cidrs
  description = "List of CIDR blocks for all elasticache subnets"
}

output "vpc_elastic_subnets" {
  value = module.stack.vpc_elastic_subnets
  description = "List of all elasticache subnets subnet IDs"
}

output "vpc_elastic_subnet_group_id" {
  value = module.stack.vpc_elastic_subnet_group_id
  description = "ID of elasticache subnet group"
}

output "vpc_elastic_subnet_group_name" {
  value = module.stack.vpc_elastic_subnet_group_name
  description = "Name of elasticache group"
}

// vpc redshift subnets
output "vpc_redshift_cidr" {
  value = module.stack.vpc_redshift_cidr
  description = "CIDR block for all redshift subnets in VPC"
}

output "vpc_redshift_cidrs" {
  value = module.stack.vpc_redshift_cidrs
  description = "List of CIDR blocks for all redshift subnets"
}

output "vpc_redshift_subnets" {
  value = module.stack.vpc_redshift_subnets
  description = "List of all redshift subnet IDs"
}

output "vpc_redshift_subnet_group_id" {
  value = module.stack.vpc_redshift_subnet_group_id
  description = "ID of redshift subnet group"
}
# NOTE; no module.vpc.redshift_subnet_group_name attribute
# output "vpc_redshift_subnet_group_name" {
#   value = module.stack.vpc_redshift_subnet_group_name
#   description = "Name of redshift subnet group"
# }

// vpc intra subnets
output "vpc_intra_cidr" {
  value = module.stack.vpc_intra_cidr
  description = "CIDR block for all intra subnets in VPC"
}

output "vpc_intra_cidrs" {
  value = module.stack.vpc_intra_cidrs
  description = "List of CIDR blocks for all intra subnets"
}

output "vpc_intra_subnets" {
  value = module.stack.vpc_intra_subnets
  description = "List of all intra subnet IDs"
}


// ----- DNS -------------------------------

output "dns_zone_name" {
  value = module.stack.dns_zone_name
  description = "Domain name for the environment"
  sensitive = true
}

output "dns_public_zone_id" {
  value = module.stack.dns_public_zone_id
  description = "Public DNS zone id for the the environment"
}

output "dns_private_zone_id" {
  value = module.stack.dns_private_zone_id
  description = "Private DNS zone id for the the environment"
}


// ----- Bastion ---------------------------

output "bastion_name" {
  value = module.stack.bastion_name
  description = "Name of the bastion host as registerd in the public DNS"
  sensitive = true
}

output "bastion_security_group_id" {
  value = module.stack.bastion_security_group_id
  description = "Security Group for the bastion host"
}


// ----- SSL Certificates ------------------

output "regional_certificate_arn" {
  value = module.stack.regional_certificate_arn
  description = "The ARN of the regional SSL certificate, for use by LoadBalancers"
}

output "global_certificate_arn" {
  value = module.stack.global_certificate_arn
  description = "The ARN of the global SSL certificate, for use by CloudFront"
}


// ----- ECS Roles -------------------------

output "ecs_task_execution_role_name" {
  value = module.stack.ecs_task_execution_role_name
  description = "The name of the ECS Task Execution Role"
}

output "ecs_task_execution_role_arn" {
  value = module.stack.ecs_task_execution_role_arn
  description = "The ARN of the ECS Task Execution Role"
}


// ----- Identity Cluster ------------------

output "identity_loadbalancer_arn" {
  value = module.stack.identity_loadbalancer_arn
  description = "The ARN of the identity cluster load balancer"
}

output "identity_loadbalancer_dimension" {
  value = module.stack.identity_loadbalancer_dimension
  description = "The ARN suffix of the identity load balancer for use in a cloud watch metrics alarm dimension"
}

output "identity_security_group_id" {
  value = module.stack.identity_security_group_id
  description = "The ID of the identity load balancer access security group"
}

output "identity_loadbalancer_http_listener_arn" {
  value = module.stack.identity_loadbalancer_http_listener_arn
  description = "The ARN of the HTTP listener on the identity load balancer"
}

output "identity_loadbalancer_https_listener_arn" {
  value = module.stack.identity_loadbalancer_https_listener_arn
  description = "The ARN of the HTTPS listener on the identity load balancer"
}

output "identity_loadbalancer_domain_name" {
  value = module.stack.identity_loadbalancer_domain_name
  description = "The nice domain name allocated to the identity load balancer"
}


output "identity_cluster_name" {
  value = module.stack.identity_cluster_name
  description = "The name of the identity cluster"
}

output "identity_cluster_arn" {
  value = module.stack.identity_cluster_arn
  description = "The ARN of the identity cluster"
}

output "identity_cluster_id" {
  value = module.stack.identity_cluster_id
  description = "The ID of the identity cluster"
}

output "identity_cluster_security_group_id" {
  value = module.stack.identity_cluster_security_group_id
  description = "The ID of the identity cluster instances security group"
}

output "identity_cluster_subnet_ids" {
  value = module.stack.identity_cluster_subnet_ids
  description = "A list of VPC subnet IDs to attach the identity cluster instances to"
}

output "identity_cluster_cap1_name" {
  value = module.stack.identity_cluster_cap1_name
  description = "Name of the first capacity provider for the identity cluster"
}

output "identity_cluster_cap2_name" {
  value = module.stack.identity_cluster_cap2_name
  description = "Name of the second capacity provider for the identity cluster"
}


# // ----- Gateway Cluster -------------------

output "gateway_loadbalancer_arn" {
  value = module.stack.gateway_loadbalancer_arn
  description = "The ARN of the gateway cluster load balancer"
}

output "gateway_loadbalancer_dimension" {
  value = module.stack.gateway_loadbalancer_dimension
  description = "The ARN suffix of the gateway load balancer for use in a cloud watch metrics alarm dimension"
}

output "gateway_security_group_id" {
  value = module.stack.gateway_security_group_id
  description = "The ID of the gateway load balancer access security group"
}

output "gateway_loadbalancer_http_listener_arn" {
  value = module.stack.gateway_loadbalancer_http_listener_arn
  description = "The ARN of the HTTP listener on the gateway load balancer"
}

output "gateway_loadbalancer_https_listener_arn" {
  value = module.stack.gateway_loadbalancer_https_listener_arn
  description = "The ARN of the HTTPS listener on the gateway load balancer"
}

output "gateway_loadbalancer_domain_name" {
  value = module.stack.gateway_loadbalancer_domain_name
  description = "The nice domain name allocated to the gateway load balancer"
}


output "gateway_cluster_name" {
  value = module.stack.gateway_cluster_name
  description = "The name of the gateway cluster"
}

output "gateway_cluster_arn" {
  value = module.stack.gateway_cluster_arn
  description = "The ARN of the gateway cluster"
}

output "gateway_cluster_id" {
  value = module.stack.gateway_cluster_id
  description = "The ID of the gateway cluster"
}

output "gateway_cluster_security_group_id" {
  value = module.stack.gateway_cluster_security_group_id
  description = "The ID of the gateway cluster instances security group"
}

output "gateway_cluster_subnet_ids" {
  value = module.stack.gateway_cluster_subnet_ids
  description = "A list of VPC subnet IDs to attach the gateway cluster instances to"
}

output "gateway_cluster_cap1_name" {
  value = module.stack.gateway_cluster_cap1_name
  description = "Name of the first capacity provider for the gateway cluster"
}

output "gateway_cluster_cap2_name" {
  value = module.stack.gateway_cluster_cap2_name
  description = "Name of the second capacity provider for the gateway cluster"
}


# // ----- Public Cluster --------------------

output "public_loadbalancer_arn" {
  value = module.stack.public_loadbalancer_arn
  description = "The ARN of the public cluster load balancer"
}

output "public_loadbalancer_dimension" {
  value = module.stack.public_loadbalancer_dimension
  description = "The ARN suffix of the public load balancer for use in a cloud watch metrics alarm dimension"
}

output "public_security_group_id" {
  value = module.stack.public_security_group_id
  description = "The ID of the public load balancer access security group"
}

output "public_loadbalancer_http_listener_arn" {
  value = module.public_loadbalancer_http_listener_arn
  description = "The ARN of the HTTP listener on the public load balancer"
}

output "public_loadbalancer_https_listener_arn" {
  value = module.public_loadbalancer_https_listener_arn
  description = "The ARN of the HTTPS listener on the public load balancer"
}

output "public_loadbalancer_domain_name" {
  value = module.public_loadbalancer_domain_name
  description = "The nice domain name allocated to the public load balancer"
}


output "public_cluster_name" {
  value = module.stack.public_cluster_name
  description = "The name of the public cluster"
}

output "public_cluster_arn" {
  value = module.stack.public_cluster_arn
  description = "The ARN of the public cluster"
}

output "public_cluster_id" {
  value = module.stack.public_cluster_id
  description = "The ID of the public cluster"
}

output "public_cluster_security_group_id" {
  value = module.stack.public_cluster_security_group_id
  description = "The ID of the public cluster instances security group"
}

output "public_cluster_subnet_ids" {
  value = module.stack.public_cluster_subnet_ids
  description = "A list of VPC subnet IDs to attach the public cluster instances to"
}

output "public_cluster_cap1_name" {
  value = module.stack.public_cluster_cap1_name
  description = "Name of the first capacity provider for the public cluster"
}

output "public_cluster_cap2_name" {
  value = module.stack.public_cluster_cap2_name
  description = "Name of the second capacity provider for the public cluster"
}


# // ----- Private Cluster -------------------

output "private_loadbalancer_arn" {
  value = module.stack.private_loadbalancer_arn
  description = "The ARN of the private cluster load balancer"
}

output "private_loadbalancer_dimension" {
  value = module.stack.private_loadbalancer_dimension
  description = "The ARN suffix of the private load balancer for use in a cloud watch metrics alarm dimension"
}

output "private_security_group_id" {
  value = module.stack.private_security_group_id
  description = "The ID of the private load balancer access security group"
}

output "private_loadbalancer_http_listener_arn" {
  value = module.stack.private_loadbalancer_http_listener_arn
  description = "The ARN of the HTTP listener on the private load balancer"
}

output "private_loadbalancer_https_listener_arn" {
  value = module.stack.private_loadbalancer_https_listener_arn
  description = "The ARN of the HTTPS listener on the private load balancer"
}

output "private_loadbalancer_domain_name" {
  value = module.stack.private_loadbalancer_domain_name
  description = "The nice domain name allocated to the private load balancer"
}


output "private_cluster_name" {
  value = module.stack.private_cluster_name
  description = "The name of the private cluster"
}

output "private_cluster_arn" {
  value = module.stack.private_cluster_arn
  description = "The ARN of the private cluster"
}

output "private_cluster_id" {
  value = module.stack.private_cluster_id
  description = "The ID of the private cluster"
}

output "private_cluster_security_group_id" {
  value = module.stack.private_cluster_security_group_id
  description = "The ID of the private cluster instances security group"
}

output "private_cluster_subnet_ids" {
  value = module.stack.private_cluster_subnet_ids
  description = "A list of VPC subnet IDs to attach the private cluster instances to"
}

output "private_cluster_cap1_name" {
  value = module.stack.private_cluster_cap1_name
  description = "Name of the first capacity provider for the private cluster"
}

output "private_cluster_cap2_name" {
  value = module.stack.private_cluster_cap2_name
  description = "Name of the second capacity provider for the private cluster"
}

