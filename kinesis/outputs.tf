

output "configchange_stream_arn" {
  value = module.configchange.stream_arn
  description = "The ARN of the configchange kinesis stream"
}
