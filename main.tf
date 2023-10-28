resource "aws_cloudfront_distribution" "cdn_distribution" {
  dynamic "origin" {
    for_each = var.distribution_type == "s3" ? [1] : []
    content {
      domain_name = var.s3_domain_name
      origin_id   = var.s3_origin_id_name
    }
  }

  # TODO: Add dynamic origin for ALB, ALB, API Gateway, and custom origin

  enabled             = var.is_enable
  is_ipv6_enabled     = var.enable_ipv6
  comment             = var.comment
  default_root_object = var.default_index_object

  dynamic "logging_config" {
    for_each = var.include_logs == true ? [1] : []
    content {
      bucket          = var.s3_domain_name
      include_cookies = var.include_cookies
      prefix          = var.log_prefix
    }
  }

  aliases = var.aliases != [] ? var.aliases : []

  default_cache_behavior {
    allowed_methods  = var.allowed_methods
    cached_methods   = var.cached_methods
    target_origin_id = var.s3_domain_name

    forwarded_values {
      query_string = var.default_cache_query_string

      cookies {
        forward = var.defaut_cookies_forward == true ? "all" : "none"
      }
    }

    viewer_protocol_policy = var.default_viewer_protocol_policy
    min_ttl                = var.default_min_ttl
    default_ttl            = var.default_default_ttl
    max_ttl                = var.default_max_ttl
  }

  dynamic "ordered_cache_behavior" {
    for_each = var.cache_path_pattern == true ? [1] : []
    content {
        path_pattern     = var.path_pattern
        allowed_methods  = var.path_allowed_methods
        cached_methods   = var.path_cached_methods
        target_origin_id = var.path_origin_id_name
    
        forwarded_values {
            query_string = var.path_cache_query_string
    
            cookies {
            forward = var.path_cookies_forward == true ? "all" : "none"
            }
        }
    
        viewer_protocol_policy = var.path_viewer_protocol_policy
        min_ttl                = var.path_min_ttl
        default_ttl            = var.path_default_ttl
        max_ttl                = var.path_max_ttl
    }
  }

# TODO: Adapt ordered_cache_behavior below

#   Cache behavior with precedence 1
  ordered_cache_behavior {
    path_pattern     = "/content/*"
    allowed_methods  = ["GET", "HEAD", "OPTIONS"]
    cached_methods   = ["GET", "HEAD"]
    target_origin_id = local.s3_origin_id

    forwarded_values {
      query_string = false

      cookies {
        forward = "none"
      }
    }

    min_ttl                = 0
    default_ttl            = 3600
    max_ttl                = 86400
    compress               = true
    viewer_protocol_policy = "redirect-to-https"
  }

  price_class = "PriceClass_200"

  restrictions {
    geo_restriction {
      restriction_type = "whitelist"
      locations        = ["US", "CA", "GB", "DE"]
    }
  }

  tags = {
    Environment = "production"
  }

  viewer_certificate {
    cloudfront_default_certificate = true
  }
}
