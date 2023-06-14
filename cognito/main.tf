
// TODO variable dependencies


// NOTE: MUST have A record for the root domain to keep cognito happy!

module "login" {
  # source = "git::ssh://git@bitbucket.org/meaningfultechnology/limberform.git//modules/aws/cognito" # latest
  # source = "git::ssh://git@bitbucket.org/meaningfultechnology/limberform.git//modules/aws/cognito?ref=v1.0.0"
  # source = "git::ssh://git@bitbucket.org/meaningfultechnology/limberform.git//modules/aws/cognito?ref=HEAD"
  source = "../../modules/aws/cognito"

  # count = 0  # TODO

  env_code            = var.env_code
  name                = "login"
  product_name        = var.product_name
  enable_params       = var.enable_params 

  notification_arn    = var.notification_arn
  certificate_arn     = var.global_certificate_arn

  # enable_ses                      = false 
  # mail_configuration_set_name     = module.email.configuration_set_name
  # mail_domain_identity_arn        = module.email.domain_identity_arn
  # mail_noreply_email_identity_arn = module.email.noreply_email_identity_arn
  # mail_noreply_email_identity     = module.email.noreply_email_identity

  dns_zone_name       = var.dns_zone_name
  dns_public_zone_id  = var.dns_public_zone_id
  dns_private_zone_id = var.dns_private_zone_id
}
