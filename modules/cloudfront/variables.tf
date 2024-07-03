variable "bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
}

variable "ssl_cert_arn" {
  description = "The ARN of the SSL certificate"
  type        = string
}

variable "domain_name" {
  description = "The domain name for the website"
  type        = string
}
