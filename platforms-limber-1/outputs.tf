
// ----- limberrdb -------------------------------


output "limberrdb_security_group_id" {
  value = module.platform.limberrdb_security_group_id
  description = "Limber PostgreSQL database server security group ID"
}


output "limberrdb_username" {
  value = module.platform.limberrdb_username
  description = "Limber PostgreSQL database server admin user name"
}

output "limberrdb_password" {
  value = module.platform.limberrdb_password
  description = "Limber PostgreSQL database server admin password"
  sensitive = true
}

output "limberrdb_arn" {
  value = module.platform.limberrdb_arn
  description = "Limber PostgreSQL database server ARN"
}

output "limberrdb_port" {
  value = module.platform.limberrdb_port
  description = "Limber PostgreSQL database server port"
}

output "limberrdb_endpoint" {
  value = module.platform.limberrdb_endpoint
  description = "Limber PostgreSQL database server connection endpoint, a fully qualified domain name"
}



// ----- limberdocdb -------------------------------


output "limberdocdb_security_group_id" {
  value = module.platform.limberdocdb_security_group_id
  description = "Limber DocumentDB database cluster security group ID"
}


output "limberdocdb_username" {
  value = module.platform.limberdocdb_username
  description = "Limber DocumentDB database cluster admin user name"
}

output "limberdocdb_password" {
  value = module.platform.limberdocdb_password
  description = "Limber DocumentDB database cluster admin password"
  sensitive = true
}

output "limberdocdb_arn" {
  value = module.platform.limberdocdb_arn
  description = "Limber DocumentDB database cluster ARN"
}

output "limberdocdb_port" {
  value = module.platform.limberdocdb_port
  description = "Limber DocumentDB database cluster port"
}

output "limberdocdb_endpoint" {
  value = module.platform.limberdocdb_endpoint
  description = "DocumentDB database cluster connection endpoint, a fully qualified domain name"
}

output "limberdocdb_reader_endpoint" {
  value = module.platform.limberdocdb_reader_endpoint
  description = "DocumentDB database cluster connection reader endpoint, a fully qualified domain name"
}


// ----- limbergraph -------------------------------
// Optional

output "limbergraph_security_group_id" {
  value = module.platform.limbergraph_security_group_id
  description = "Limber Graph database cluster security group ID"
}


output "limbergraph_arn" {
  value = module.platform.limbergraph_arn
  description = "Limber Graph database cluster ARN"
}

output "limbergraph_port" {
  value = module.platform.limbergraph_port
  description = "Limber Graph database cluster port"
}

output "limbergraph_endpoint" {
  value = module.platform.limbergraph_endpoint
  description = "Limber Graph database cluster connection endpoint, a fully qualified domain name"
}

output "limbergraph_reader_endpoint" {
  value = module.platform.limbergraph_reader_endpoint
  description = "Limber Graph database cluster connection reader endpoint, a fully qualified domain name"
}


// ----- Root Web Site -------------------------------------------------------------

output "rootsite_distribution_id" {
  value = module.platform.rootsite_distribution_id
  description = "The ID of the cloudfront distribution for the root website"
}

output "rootsite_distribution_arn" {
  value = module.platform.rootsite_distribution_arn
  description = "The ARN of the cloudfront distribution for the root website"
}


// ----- SES ------------------------------------------------------------------
// Optional

output "email_configuration_set_id" {
  value = module.platform.email_configuration_set_id
  description = "The ID of the SES configuration set"
}

output "email_configuration_set_arn" {
  value = module.platform.email_configuration_set_arn  
  description = "The ARN of the SES configuration set"
}

output "email_configuration_set_name" {
  value = module.platform.email_configuration_set_name  
  description = "The name of the SES configuration set"
}


output "email_domain_identity_arn" {
  value = module.platform.email_domain_identity_arn  
  description = "The ARN of the SES domain identity"
}

output "email_mail_domain" {
  value = module.platform.email_mail_domain  
  description = "The fully qualified email domain, eg. mydomain.com"
}


output "email_noreply_email_identity_arn" {
  value = module.platform.email_noreply_email_identity_arn  
  description = "The ARN of the noreply SES email identity"
}

output "email_noreply_email_identity" {
  value = module.platform.email_noreply_email_identity  
  description = "The noreply email address identity, eg. noreply@mydomain.com"
}


// ----- AWS Cognito --------------------------------------

output "login_user_pool_id" {
  value = module.platform.login_user_pool_id
  description = "The ID of the login cognito user pool"
}

output "login_user_pool_arn" {
  value = module.platform.login_user_pool_arn
  description = "The ARN of the login cognito user pool"
}

output "login_user_pool_domain" {
  value = module.platform.login_user_pool_domain
  description = "The fully qualified domain name of the login cognito user pool"
  sensitive = true
}


// ----- AWS API Gateway ----------------------------------

# output "apigateway_security_group_id" {
#   value = module.platform.apigateway_security_group_id
#   description = "API Gateway security group ID"
# }


// ----- Kinesis Stream -----------------------------------

# output "configchange_stream_arn" {
#   value = module.platform.configchange_stream_arn
#   description = "The ARN of the configchange kinesis stream"
# }
