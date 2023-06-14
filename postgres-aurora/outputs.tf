

output "limberrdb_security_group_id" {
  value = module.limberrdb.security_group_id
  description = "Limber PostgreSQL database server security group ID"
}


output "limberrdb_username" {
  value = module.limberrdb.username
  description = "Limber PostgreSQL database server admin user name"
}

output "limberrdb_password" {
  value = module.limberrdb.password
  description = "Limber PostgreSQL database server admin password"
  sensitive = true
}

output "limberrdb_arn" {
  value = module.limberrdb.arn
  description = "Limber PostgreSQL database server ARN"
}

output "limberrdb_port" {
  value = module.limberrdb.port
  description = "Limber PostgreSQL database server port"
}

output "limberrdb_endpoint" {
  value = module.limberrdb.endpoint
  description = "Limber PostgreSQL database server connection endpoint, a fully qualified domain name"
}

