
output "root_distribution_id" {
  value = module.root_site.distribution_id
  description = "The ID of the cloudfront distribution for the root website"
}

output "root_distribution_arn" {
  value = module.root_site.distribution_arn
  description = "The ARN of the cloudfront distribution for the root website"
}

output "root_domain_name" {
  value = module.root_site.domain_name
  description = "The fully qualified domain of the root website"
}

