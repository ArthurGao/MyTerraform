

#
# Limber stack configuration variables
#

variable "product_name" {
  type = string
  description = "Name for the product"

  validation {
    condition = length(var.product_name) > 0
    error_message = "Missing 'product_name' variable."
  }
}

variable "notify_email" {
  type = string
  description = "Alarm notification email"

  validation {
    condition = length(var.notify_email) > 0
    error_message = "Missing 'notify_email' variable."
  }
}



variable "use_default_vpc" {
  type = bool
  description = "Use the default VPC in the target account and region?  Only one deployment can use the default VPC"
  default = false
}

variable "cidr" {
  description = "The CIDR block for the VPC. Must be /16 or larger"
  type        = string
  default     = "10.1.0.0/16"
}

variable "azs" {
  description = "Number of availability zones to use. Must be greater than 1, must be no more than azs in region"
  type        = number
  default     = 2
}


variable "sub_domain_name" {
  description = "Name of the sub domain to prepend, set to empty string \"\" to use the base domain directly"
  type        = string
  default     = ""
}


variable "ssh_from_cidrs" {
  type        = list(string)
  description = "A list of CIDR block allowed access to bastion"
}




#
# Environment configuration variables
#

variable "env_code" {
  type = string
  description = "Unique short code for the environment"

  validation {
    condition = length(var.env_code) > 0
    error_message = "Missing 'env_code' variable."
  }
}


#
# Account link variables
#

variable "account_id" {
  type = string
  description = "AWS Account ID"

  validation {
    condition = length(var.account_id) > 0
    error_message = "Missing 'account_id' variable."
  }
}

variable "account_code" {
  type = string
  description = "Unique short code for the Account"

  validation {
    condition = length(var.account_code) > 0
    error_message = "Missing 'account_code' variable."
  }
}


#
# S3 Backend variable names
# These MUST match expected S3 Backend Configuration parameters exactly
#

variable "session_name" {
  type = string
  description = "Session name for assume role access to the AWS Account"

  validation {
    condition = length(var.session_name) > 0
    error_message = "Missing 'session_name' variable."
  }
}

variable "role_arn" {
  type = string
  description = "Deployment role to assume in the AWS Account"

  validation {
    condition = length(var.role_arn) > 0
    error_message = "Missing 'role_arn' variable."
  }
}

variable "region" {
  type = string
  description = "Target AWS region"
}

variable "bucket" {
  type = string
  description = "Name of the S3 bucket to hold terraform state"

  validation {
    condition = length(var.bucket) > 0
    error_message = "Missing 'bucket' variable."
  }
}

variable "key" {
  type = string
  description = "Path and name of the file to hold the terraform state"

  validation {
    condition = length(var.key) > 0
    error_message = "Missing 'key' variable."
  }
}
