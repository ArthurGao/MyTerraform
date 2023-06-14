
// TODO variable dependencies


module "test_queue" {
  # source = "git::ssh://git@bitbucket.org/meaningfultechnology/limberform.git//modules/aws/queue" # latest
  # source = "git::ssh://git@bitbucket.org/meaningfultechnology/limberform.git//modules/aws/queue?ref=v1.0.0"
  # source = "git::ssh://git@bitbucket.org/meaningfultechnology/limberform.git//modules/aws/queue?ref=HEAD"
  source = "../../modules/aws/queue"

  env_code            = var.env_code
  name                = "test"
  product_name        = var.product_name
  enable_params       = var.enable_params 

  notification_arn    = var.notification_arn
}

