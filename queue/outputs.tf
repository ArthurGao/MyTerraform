

output "test_data_queue_url" {
  value = module.test_queue.data_queue_url
  description = "URL of the data queue"
}

output "test_dead_queue_url" {
  value = module.test_queue.dead_queue_url
  description = "URL of the dead letter queue"
}

