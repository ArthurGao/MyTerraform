
// TODO variable dependencies

locals {
  apis_name = "apis"  # must only contain alphanumeric characters and hyphens
}


module "api2domain" {
  # source = "git::ssh://git@bitbucket.org/meaningfultechnology/limberform.git//modules/aws/api2domain" # latest
  # source = "git::ssh://git@bitbucket.org/meaningfultechnology/limberform.git//modules/aws/api2domain?ref=v1.0.0"
  # source = "git::ssh://git@bitbucket.org/meaningfultechnology/limberform.git//modules/aws/api2domain?ref=HEAD"
  source = "../../modules/aws/api2domain"

  env_code            = var.env_code
  name                = local.apis_name
  product_name        = var.product_name
  enable_params       = var.enable_params 

  dns_zone_name       = var.dns_zone_name
  dns_public_zone_id  = var.dns_public_zone_id
  dns_private_zone_id = var.dns_private_zone_id

  certificate_arn     = var.regional_certificate_arn
}
