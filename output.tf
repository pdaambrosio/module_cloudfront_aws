output "cloudfront_distribution_id" {
  value = aws_cloudfront_distribution.cdn_distribution.id
  description = "The identifier for the distribution. For example: EDFDVBD632BHDS5."
}

output "cloudfront_distribution_arn" {
  value = aws_cloudfront_distribution.cdn_distribution.arn
  description = "The ARN (Amazon Resource Name) for the distribution. For example: arn:aws:cloudfront::123456789012:distribution/EDFDVBD632BHDS5, where 123456789012 is your AWS account ID."
}

output "cloudfront_distribution_domain_name" {
  value = aws_cloudfront_distribution.cdn_distribution.domain_name
  description = "The domain name corresponding to the distribution. For example: d604721fxaaqy9.cloudfront.net."
}

output "cloudfront_distribution_etag" {
  value = aws_cloudfront_distribution.cdn_distribution.etag
  description = "The current version of the distribution's information. For example: E2QWRUHAPOMQZL."
}

output "cloudfront_distribution_hosted_zone_id" {
  value = aws_cloudfront_distribution.cdn_distribution.hosted_zone_id
  description = "The CloudFront Route 53 zone ID that can be used to route an Alias Resource Record Set to. This attribute is simply an alias for the zone ID Z2FDTNDATAQYW2."
}
