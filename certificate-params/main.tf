

// TODO variable dependencies

module "certificates" {
  source  = "../../modules/aws/certificates"
  # source = "git::ssh://git@bitbucket.org/meaningfultechnology/limberform.git//modules/aws/certificates" # latest
  # source = "git::ssh://git@bitbucket.org/meaningfultechnology/limberform.git//modules/aws/certificates?ref=v1.0.0"

  providers = {
    aws.regional = aws
    aws.global   = aws.virginia
  }

  env_code       = var.env_code
  name           = "certificates"
  product_name   = var.product_name
  enable_params  = true 

  zone_id        = module.infrastructure.dns_public_zone_id
  domain_name    = module.infrastructure.dns_zone_name
}
