

// TODO variable dependencies


module "root_site" {
  # source = "git::ssh://git@bitbucket.org/meaningfultechnology/limberform.git//modules/aws/website" # latest
  # source = "git::ssh://git@bitbucket.org/meaningfultechnology/limberform.git//modules/aws/website?ref=v1.0.0"
  # source = "git::ssh://git@bitbucket.org/meaningfultechnology/limberform.git//modules/aws/website?ref=HEAD"
  source = "../../modules/aws/website"

  env_code             = var.env_code
  name                 = "root"
  product_name         = var.product_name
  enable_params        = var.enable_params 

  certificate_arn      = var.global_base_certificate_arn
  is_root_site         = true 
  is_spa               = false 
  price_class          = var.website_price_class
  geo_restriction_type = var.website_geo_restriction_type
  geo_locations        = var.website_geo_locations

  dns_zone_name        = var.dns_zone_name
  dns_public_zone_id   = var.dns_public_zone_id
  dns_private_zone_id  = var.dns_private_zone_id
}

