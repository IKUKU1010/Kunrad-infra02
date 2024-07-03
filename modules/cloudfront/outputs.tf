output "cloudfront_dns" {
  value = aws_cloudfront_distribution.static_site.domain_name
}
