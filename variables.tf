variable "distribution_type" {
  description = "The type of distribution to create. Valid values: 's3', 'load-balancer', 'lambda', 'custom-origin'"
  type        = string
  default     = "s3"
}

variable "s3_domain_name" {
  description = "The domain name of the S3 bucket to associate with the distribution. The S3 bucket must be in the same region as the CloudFront distribution."
  type        = string
  default     = "mybucket.s3.amazonaws.com"
}

variable "s3_origin_id_name" {
  description = "A unique identifier that specifies the AWS S3 origin."
  type        = string
  default     = "myS3Origin"
}

variable "is_enable" {
  description = "Whether the distribution is enabled to accept end user requests for content."
  type        = bool
  default     = true
}

variable "enable_ipv6" {
  description = "Whether the IPv6 is enabled for the distribution."
  type        = bool
  default     = true
}

variable "comment" {
  description = "Any comments you want to include about the distribution."
  type        = string
  default     = "My comment"
}

variable "default_index_object" {
  description = "The object that you want CloudFront to request from your origin (for example, index.html) when a viewer requests the root URL for your distribution (http://www.example.com) instead of an object in your distribution (http://www.example.com/product-description.html)."
  type        = string
  default     = "index.html"
}

variable "include_logs" {
  description = "Whether you want CloudFront to save access logs to an Amazon S3 bucket."
  type        = bool
  default     = true
}

variable "include_cookies" {
  description = "Specifies whether you want CloudFront to forward cookies to the origin that is associated with this cache behavior."
  type        = bool
  default     = false
}

variable "log_prefix" {
  description = "An optional string that you want CloudFront to prefix to the access log filenames for this distribution, for example, myprefix/. If you want to enable logging, but you don't want to specify a prefix, you still must include an empty Prefix element in the Logging element."
  type        = string
  default     = "myprefix"
}

variable "aliases" {
  description = "A list of CNAMEs (alternate domain names), if any, for this distribution."
  type        = list(string)
  default     = []

}

variable "allowed_methods" {
  description = "HTTP methods that CloudFront processes and forwards to your Amazon S3 bucket or your custom origin."
  type        = list(string)
  default     = ["DELETE", "GET", "HEAD", "OPTIONS", "PATCH", "POST", "PUT"]
}

variable "cached_methods" {
  description = "HTTP methods for which CloudFront caches responses."
  type        = list(string)
  default     = ["GET", "HEAD"]
}

variable "default_cache_query_string" {
  description = "Indicates whether CloudFront automatically includes query strings in requests that it sends to the origin."
  type        = bool
  default     = false
}

variable "defaut_cookies_forward" {
    description = "Specifies which cookies to forward to the origin for this cache behavior: all, none or whitelist."
    type        = bool
    default     = false
}

variable "default_viewer_protocol_policy" {
    description = "The protocol that viewers can use to access the files in the origin specified by TargetOriginId when a request matches the path pattern in PathPattern."
    type        = string
    default     = "redirect-to-https"
}

variable "default_min_ttl" {
    description = "The minimum amount of time that you want objects to stay in CloudFront caches before CloudFront queries your origin to see whether the object has been updated."
    type        = number
    default     = 0
}

variable "default_default_ttl" {
    description = "The default amount of time that you want objects to stay in CloudFront caches before CloudFront queries your origin to see whether the object has been updated."
    type        = number
    default     = 86400
}

variable "default_max_ttl" {
    description = "The maximum amount of time that you want objects to stay in CloudFront caches before CloudFront queries your origin to see whether the object has been updated."
    type        = number
    default     = 31536000
}

variable "cache_path_pattern" {
    description = "Whether you want CloudFront to forward query strings to the origin that is associated with this cache behavior."
    type        = bool
    default     = false
}

variable "path_pattern" {
    description = "The pattern (for example, images/*.jpg) that specifies which requests to apply the behavior to."
    type        = string
    default     = "/content/*"
}

variable "path_allowed_methods" {
    description = "HTTP methods that CloudFront processes and forwards to your Amazon S3 bucket or your custom origin."
    type        = list(string)
    default     = ["DELETE", "GET", "HEAD", "OPTIONS", "PATCH", "POST", "PUT"]
}

variable "path_cached_methods" {
    description = "HTTP methods for which CloudFront caches responses."
    type        = list(string)
    default     = ["GET", "HEAD"]
}

variable "path_origin_id_name" {
    description = "A unique identifier that specifies the AWS origin."
    type        = string
    default     = "myOrigin"
}

variable "path_cache_query_string" {
    description = "Indicates whether CloudFront automatically includes query strings in requests that it sends to the origin."
    type        = bool
    default     = false
}

variable "path_cookies_forward" {
    description = "Specifies which cookies to forward to the origin for this cache behavior: all, none or whitelist."
    type        = bool
    default     = false
}

variable "path_viewer_protocol_policy" {
    description = "The protocol that viewers can use to access the files in the origin specified by TargetOriginId when a request matches the path pattern in PathPattern."
    type        = string
    default     = "redirect-to-https"
}

variable "path_min_ttl" {
    description = "The minimum amount of time that you want objects to stay in CloudFront caches before CloudFront queries your origin to see whether the object has been updated."
    type        = number
    default     = 0
}

variable "path_default_ttl" {
    description = "The default amount of time that you want objects to stay in CloudFront caches before CloudFront queries your origin to see whether the object has been updated."
    type        = number
    default     = 86400
}

variable "path_max_ttl" {
    description = "The maximum amount of time that you want objects to stay in CloudFront caches before CloudFront queries your origin to see whether the object has been updated."
    type        = number
    default     = 31536000
}


