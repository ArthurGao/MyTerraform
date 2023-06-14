

output "apigateway_security_group_id" {
  value = module.api2gateway.security_group_id
  description = "API Gateway security group ID"
}

