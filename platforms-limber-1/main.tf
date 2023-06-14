
// TODO variable dependencies

module "geo_regions2" {
  # source = "git::ssh://git@bitbucket.org/meaningfultechnology/limberform.git//modules/generic/geo-regions-2" # latest
  # source = "git::ssh://git@bitbucket.org/meaningfultechnology/limberform.git//modules/generic/geo-regions-2?ref=v1.0.0"
  # source = "git::ssh://git@bitbucket.org/meaningfultechnology/limberform.git//modules/generic/geo-regions-2?ref=HEAD"
  source = "../../modules/generic/geo-regions-2"

  // no parameters
}


module "platform" {
  # source = "git::ssh://git@bitbucket.org/meaningfultechnology/limberform.git//platforms/limber-1" # latest
  # source = "git::ssh://git@bitbucket.org/meaningfultechnology/limberform.git//platforms/limber-1?ref=v1.0.0"
  # source = "git::ssh://git@bitbucket.org/meaningfultechnology/limberform.git//platforms/limber-1?ref=HEAD"
  source = "../../platforms/limber-1"

  # providers = {
  #   aws = aws
  # }

  count = 0

  env_code         = var.env_code
  product_name     = var.product_name
  enable_params    = true 

  notification_arn = module.stack.notification_topic_arn

  vpc_id                         = module.stack.vpc_id
  vpc_cidr                       = module.stack.vpc_cidr
  vpc_private_subnets            = module.stack.vpc_private_subnets
  vpc_database_subnet_group_id   = module.stack.vpc_database_subnet_group_id
  vpc_database_subnet_group_name = module.stack.vpc_database_subnet_group_name

  dns_zone_name                  = module.stack.dns_zone_name
  dns_public_zone_id             = module.stack.dns_public_zone_id
  dns_private_zone_id            = module.stack.dns_private_zone_id

  regional_certificate_arn      = module.stack.regional_certificate_arn
  global_certificate_arn        = module.stack.global_certificate_arn
  global_base_certificate_arn   = module.stack.global_base_certificate_arn

  # limberrdb
  # limberrdb_name                 = "limberrdb"
  # limberrdb_engine_version       = "12.6"
  # limberrdb_instance_class       = "db.t3.medium"
  # limberrdb_instance_count       = 1

  # limberdocdb
  # limberdocdb_name               = "limberdocdb"
  # limberdocdb_engine_version     = "4.0.0"
  # limberdocdb_instance_class     = "db.t3.medium"
  # limberdocdb_instance_count     = 2

  # limbergraph
  # enable_limbergraph             = false
  # limbergraph_host_name          = "limbergraph"
  # limbergraph_engine_version     = "1.0.5.0"
  # limbergraph_instance_class     = "db.t3.medium"
  # limbergraph_instance_count     = 1
  # limbergraph_query_timeout      = 20000

  # root web site
  # website_price_class            = "PriceClass_100"
  # website_geo_restriction_type   = "none"
  # website_geo_locations          = []
  website_geo_restriction_type   = "whitelist"
  website_geo_locations          = setunion(module.geo_regions2.region_australasia, module.geo_regions2.region_europe_west, module.geo_regions2.region_north_america)

  # email server
  # enable_ses                     = false
  # email_host_name                = "mail"

  # Cognito Identity management
  # login_use_ses                  = false 
  # login_host_name                = "login"

  # AWS API Gateway
  # apigateway_host_name           = "apis"

  # kinesis config change notification stream
  # configchange_stream_name = "configchange"

}
