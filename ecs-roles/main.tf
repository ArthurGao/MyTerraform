
// TODO variable dependencies


module "ecsroles" {
  source  = "../../modules/aws/ecs-roles"
  # source = "git::ssh://git@bitbucket.org/meaningfultechnology/limberform.git//modules/aws/ecs-roles" # latest
  # source = "git::ssh://git@bitbucket.org/meaningfultechnology/limberform.git//modules/aws/ecs-roles?ref=v1.0.0"

  env_code         = var.env_code
  name             = "ecsroles"
  product_name     = var.product_name
  enable_params    = true 
}

