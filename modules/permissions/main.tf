# Define the IAM role for CloudFront
# resource "aws_iam_role" "cloudfront_role" {
#   name = "cloudfront_role"

#   assume_role_policy = jsonencode({
#     Version = "2012-10-17"
#     Statement = [{
#       Action    = "sts:AssumeRole"
#       Effect    = "Allow"
#       Principal = {
#         Service = "cloudfront.amazonaws.com"
#       }
#     }]
#   })

#   lifecycle {
#     create_before_destroy = true
#     prevent_destroy       = true
#   }
# }

# Define the IAM role for API Gateway
# resource "aws_iam_role" "api_gateway_role" {
#   name = "api_gateway_role"

#   assume_role_policy = jsonencode({
#     Version = "2012-10-17"
#     Statement = [{
#       Action    = "sts:AssumeRole"
#       Effect    = "Allow"
#       Principal = {
#         Service = "apigateway.amazonaws.com"
#       }
#     }]
#   })

#   lifecycle {
#     create_before_destroy = true
#     prevent_destroy       = true
#   }
# }
