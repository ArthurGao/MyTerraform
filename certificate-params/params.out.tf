#
# Create SSM Output Parameters for every certificate module output
#


// ----- SSL Certificates ------------------

resource "aws_ssm_parameter" "regional_certificate_arn" {
  name  = "/env/${var.env_code}/certificates/certificate/regional/arn"
  type  = "String"  
  value = module.certificates.regional_certificate_arn
  description = "The ARN of the regional SSL certificate, for use by LoadBalancers"
}

resource "aws_ssm_parameter" "global_certificate_arn" {
  name  = "/env/${var.env_code}/certificates/certificate/global/arn"
  type  = "String"  
  value = module.certificates.global_certificate_arn
  description = "The ARN of the global SSL certificate, for use by CloudFront"
}

