

// TODO variable dependencies


module "email" {
  # source = "git::ssh://git@bitbucket.org/meaningfultechnology/limberform.git//modules/aws/ses" # latest
  # source = "git::ssh://git@bitbucket.org/meaningfultechnology/limberform.git//modules/aws/ses?ref=v1.0.0"
  # source = "git::ssh://git@bitbucket.org/meaningfultechnology/limberform.git//modules/aws/ses?ref=HEAD"
  source = "../../modules/aws/ses"

  env_code             = var.env_code
  name                 = "mail"
  product_name         = var.product_name
  enable_params        = var.enable_params 

  notification_arn    = var.notification_arn

  dns_zone_name        = var.dns_zone_name
  dns_public_zone_id   = var.dns_public_zone_id
  dns_private_zone_id  = var.dns_private_zone_id
}


# TODO need Amazon Workmail to receive messages to verify
//
// 1. Manually add Workmail Organisation, select "this" var.dnz_zone_name / and var.dns_public_zone_id as the route53 domain 
// Open Workmail organisation
// 2. add login user / sBw@UgLqqWnQ2yf  /  login@limber.dev.limbergraph.com
// 3. add noreply user / JdMYz@2ve8SAJN2 / noreply@limber.dev.limbergraph.com

// web application
// https://limber-dev.awsapps.com/mail



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
