
output "limberdocdb_security_group_id" {
  value = module.limberdocdb.security_group_id
  description = "Limber DocumentDB database cluster security group ID"
}


output "limberdocdb_username" {
  value = module.limberdocdb.username
  description = "Limber DocumentDB database cluster admin user name"
}

output "limberdocdb_password" {
  value = module.limberdocdb.password
  description = "Limber DocumentDB database cluster admin password"
  sensitive = true
}

output "limberdocdb_arn" {
  value = module.limberdocdb.arn
  description = "Limber DocumentDB database cluster ARN"
}

output "limberdocdb_port" {
  value = module.limberdocdb.port
  description = "Limber DocumentDB database cluster port"
}

output "limberdocdb_endpoint" {
  value = module.limberdocdb.endpoint
  description = "DocumentDB database cluster connection endpoint, a fully qualified domain name"
}

output "limberdocdb_reader_endpoint" {
  value = module.limberdocdb.reader_endpoint
  description = "DocumentDB database cluster connection endpoint, a fully qualified domain name"
}
