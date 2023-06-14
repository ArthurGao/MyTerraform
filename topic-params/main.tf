
// TODO variable dependencies

module "notification" {
  source  = "../../modules/aws/topic"
  # source = "git::ssh://git@bitbucket.org/meaningfultechnology/limberform.git//modules/aws/topic" # latest
  # source = "git::ssh://git@bitbucket.org/meaningfultechnology/limberform.git//modules/aws/topic?ref=v1.0.0"

  env_code         = var.env_code
  name             = "notification"
  product_name     = var.product_name
  enable_params    = true 

  notify_email     = var.notify_email
}
