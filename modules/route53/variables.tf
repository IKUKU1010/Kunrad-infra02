variable "zone_id" {
  description = "The ID of the Route53 hosted zone"
  type        = string
}

variable "domain_name" {
  description = "The domain name"
  type        = string
}

variable "cloudfront_dns" {
  description = "CloudFront distribution DNS name"
  type        = string
}

variable "cloudfront_zone_id" {
  description = "CloudFront zone ID"
  type        = string
}
