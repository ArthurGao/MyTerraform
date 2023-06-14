#
# Create SSM Output Parameters for every certificate module output
#


# // ----- Notification Topic ----------------

resource "aws_ssm_parameter" "topic_name" {
  name  = "/env/${var.env_code}/topic/notification/name"
  type  = "String"  
  value = module.notification.notification_name
  description = "Alarm notification topic name."
}


resource "aws_ssm_parameter" "topic_arn" {
  name  = "/env/${var.env_code}/topic/notification/arn"
  type  = "String"  
  value = module.notification.notification_arn
  description = "Alarm notification topic ARN."
}

