

resource "aws_ssm_parameter" "ecs_task_execution_role_name" {
  name  = "/env/${var.env_code}/ecs/ecsroles/task_execution_role/name"
  type  = "String"  
  value = module.ecsroles.ecs_task_execution_role_name
  description = "The name of the ECS Task Execution Role"
}

resource "aws_ssm_parameter" "ecs_task_execution_role_arn" {
  name  = "/env/${var.env_code}/ecs/ecsroles/task_execution_role/arn"
  type  = "String"  
  value = module.ecsroles.ecs_task_execution_role_arn
  description = "The ARN of the ECS Task Execution Role"
}

