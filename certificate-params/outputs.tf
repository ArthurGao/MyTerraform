#
# Create Output Parameters for every certificate module output
#


// ----- SSL Certificates ------------------

output "regional_certificate_arn" {
  value = module.certificates.regional_certificate_arn
  description = "The ARN of the regional SSL certificate, for use by LoadBalancers"
}

output "global_certificate_arn" {
  value = module.certificates.global_certificate_arn
  description = "The ARN of the global SSL certificate, for use by CloudFront"
}

