

// TODO variable dependencies


module "infrastructure" {
  source  = "../../modules/aws/infrastructure"
  # source = "git::ssh://git@bitbucket.org/meaningfultechnology/limberform.git//modules/aws/infrastructure" # latest
  # source = "git::ssh://git@bitbucket.org/meaningfultechnology/limberform.git//modules/aws/infrastructure?ref=v1.0.0"

  env_code         = var.env_code
  name             = "infrastructure"
  product_name     = var.product_name
  enable_params    = true 

  notification_arn = module.notification.notification_arn
  cidr             = var.cidr
  azs              = var.azs
  base_zone_id     = data.aws_ssm_parameter.domain_zone_id.value
  base_domain_name = data.aws_ssm_parameter.domain_zone_name.value
  sub_domain_name  = var.sub_domain_name
  enable_bastion   = true
  ec2_key_name     = data.aws_ssm_parameter.ec2_key_name.value
  ssh_from_cidrs   = var.ssh_from_cidrs
}

