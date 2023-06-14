
// TODO variable dependencies

module "alarms" {
  # source = "git::ssh://git@bitbucket.org/meaningfultechnology/limberform.git//modules/aws/service-alarms" # latest
  # source = "git::ssh://git@bitbucket.org/meaningfultechnology/limberform.git//modules/aws/service-alarms?ref=v1.0.0"
  # source = "git::ssh://git@bitbucket.org/meaningfultechnology/limberform.git//modules/aws/service-alarms?ref=HEAD"
  source = "../../modules/aws/service-alarms"

  # count = 0

  env_code                = var.env_code
  name                    = var.name
  product_name            = var.product_name
  module_name             = "my-service"

  notification_arn        = var.notification_arn

  enable_lb_alarms        = true 
  loadbalancer_dimension  = var.loadbalancer_dimension
  targetgroup_dimension   = aws_lb_target_group.service_target.arn_suffix

  cluster_name            = var.cluster_name
  service_name            = aws_ecs_service.service.name
}
