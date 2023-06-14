
output "login_user_pool_id" {
  value = module.login.user_pool_id
  description = "The ID of the login cognito user pool"
}

output "login_user_pool_arn" {
  value = module.login.user_pool_arn
  description = "The ARN of the login cognito user pool"
}

output "login_user_pool_domain" {
  value = module.login.user_pool_domain
  description = "The fully qualified domain name of the login cognito user pool"
  sensitive = true
}
