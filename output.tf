output "cloudfront_distribution_id" {
  value = aws_cloudfront_distribution.cdn_distribution.id
}

output "cloudfront_distribution_arn" {
  value = aws_cloudfront_distribution.cdn_distribution.arn
}

output "cloudfront_distribution_domain_name" {
  value = aws_cloudfront_distribution.cdn_distribution.domain_name
}

output "cloudfront_distribution_etag" {
  value = aws_cloudfront_distribution.cdn_distribution.etag
}

output "cloudfront_distribution_hosted_zone_id" {
  value = aws_cloudfront_distribution.cdn_distribution.hosted_zone_id
}
