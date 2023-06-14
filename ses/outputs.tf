
output "email_configuration_set_id" {
  value = module.email.configuration_set_id
  description = "The ID of the SES configuration set"
}

output "email_configuration_set_arn" {
  value = module.email.configuration_set_arn
  description = "The ARN of the SES configuration set"
}

output "email_configuration_set_name" {
  value = module.email.configuration_set_name
  description = "The name of the SES configuration set"
}


output "email_domain_identity_arn" {
  value = module.email.domain_identity_arn
  description = "The ARN of the SES domain identity"
}

output "email_mail_domain" {
  value = module.email.mail_domain
  description = "The fully qualified email domain, eg. mydomain.com"
}


output "email_noreply_email_identity_arn" {
  value = module.email.noreply_email_identity_arn
  description = "The ARN of the noreply SES email identity"
}

output "email_noreply_email_identity" {
  value = module.email.noreply_email_identity
  description = "The noreply email address identity, eg. noreply@mydomain.com"
}
