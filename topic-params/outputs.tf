
// ----- Notification Topic ----------------


output "notification_topic_name" {
  value = module.notification.topic_name
  description = "Alarm notification topic name."
}

output "notification_topic_arn" {
  value = module.notification.topic_arn
  description = "Alarm notification topic ARN."
}

