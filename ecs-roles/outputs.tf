

output "ecs_task_execution_role_name" {
  value = module.ecsroles.ecs_task_execution_role_name
  description = "The name of the ECS Task Execution Role"
}

output "ecs_task_execution_role_arn" {
  value = module.ecsroles.ecs_task_execution_role_arn
  description = "The ARN of the ECS Task Execution Role"
}

