
// TODO variable dependencies

module "configchange" {
  # source = "git::ssh://git@bitbucket.org/meaningfultechnology/limberform.git//modules/aws/kinesis" # latest
  # source = "git::ssh://git@bitbucket.org/meaningfultechnology/limberform.git//modules/aws/kinesis?ref=v1.0.0"
  # source = "git::ssh://git@bitbucket.org/meaningfultechnology/limberform.git//modules/aws/kinesis?ref=HEAD"
  source = "../../modules/aws/kinesis"

  env_code            = var.env_code
  name                = "configchange"
  product_name        = var.product_name
  enable_params       = var.enable_params 

  notification_arn    = var.notification_arn
  shard_count         = 1
  retention_period    = 168
}

