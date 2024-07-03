provider "aws" {
  region = var.aws_region
}

module "s3_bucket" {
  source      = "./modules/s3_bucket"
  bucket_name = var.bucket_name
}

module "cloudfront" {
  source         = "./modules/cloudfront"
  bucket_name    = module.s3_bucket.bucket_name
  ssl_cert_arn   = var.certificate_arn
  domain_name    = var.domain_name
}

module "route53" {
  source             = "./modules/route53"
  domain_name        = var.domain_name
  cloudfront_dns     = module.cloudfront.cloudfront_dns
  cloudfront_zone_id = "Z2FDTNDATAQYW2"  # This is a common CloudFront zone ID for all distributions
  zone_id            = var.zone_id
}

module "iam" {
  source = "./modules/iam"
}

module "permissions" {
  source      = "./modules/permissions"
  bucket_name = var.bucket_name
}

module "api_gateway" {
  source = "./modules/api_gateway"
}
