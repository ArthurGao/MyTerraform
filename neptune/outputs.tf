

output "limbergraph_security_group_id" {
  value = module.limbergraph.security_group_id
  description = "Limber Graph database cluster security group ID"
}


output "limbergraph_arn" {
  value = module.limbergraph.arn
  description = "Limber Graph database cluster ARN"
}

output "limbergraph_port" {
  value = module.limbergraph.port
  description = "Limber Graph database cluster port"
}

output "limbergraph_endpoint" {
  value = module.limbergraph.endpoint
  description = "Limber Graph database cluster connection endpoint, a fully qualified domain name"
}

output "limbergraph_reader_endpoint" {
  value = module.limbergraph.reader_endpoint
  description = "Limber Graph database cluster connection endpoint, a fully qualified domain name"
}

