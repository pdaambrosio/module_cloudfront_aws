# module_cloudfront_aws

- Terraform module to create a Cloudfront distribution on AWS
- Example of use see this repository: [project_aws_website_s3](https://github.com/pdaambrosio/project_aws_website_s3)

<!-- BEGIN_AUTOMATED_TF_DOCS_BLOCK -->
## Requirements

No requirements.
## Usage
Basic usage of this module is as follows:
```hcl
module "example" {
	 source  = "<module-path>"

	 # Optional variables
	 aliases  = []
	 allowed_methods  = [
  "DELETE",
  "GET",
  "HEAD",
  "OPTIONS",
  "PATCH",
  "POST",
  "PUT"
]
	 cache_path_pattern  = false
	 cached_methods  = [
  "GET",
  "HEAD"
]
	 cloudfront_default_certificate  = true
	 comment  = "My comment"
	 default_cache_query_string  = false
	 default_default_ttl  = 86400
	 default_index_object  = "index.html"
	 default_max_ttl  = 31536000
	 default_min_ttl  = 0
	 default_viewer_protocol_policy  = "redirect-to-https"
	 defaut_cookies_forward  = false
	 distribution_type  = "s3"
	 enable_ipv6  = true
	 environment  = "dev"
	 extra_tags  = {}
	 geo_locations  = [
  "US",
  "CA",
  "GB",
  "DE"
]
	 include_cookies  = false
	 include_logs  = true
	 is_enable  = true
	 log_prefix  = "myprefix"
	 path_allowed_methods  = [
  "DELETE",
  "GET",
  "HEAD",
  "OPTIONS",
  "PATCH",
  "POST",
  "PUT"
]
	 path_cache_query_string  = false
	 path_cached_methods  = [
  "GET",
  "HEAD"
]
	 path_cookies_forward  = false
	 path_default_ttl  = 86400
	 path_max_ttl  = 31536000
	 path_min_ttl  = 0
	 path_origin_id_name  = "myOrigin"
	 path_pattern  = "/content/*"
	 path_viewer_protocol_policy  = "redirect-to-https"
	 price_class  = "PriceClass_100"
	 restriction_type  = "whitelist"
	 s3_domain_name  = "mybucket.s3.amazonaws.com"
	 s3_origin_id_name  = "myS3Origin"
}
```
## Resources

| Name | Type |
|------|------|
| [aws_cloudfront_distribution.cdn_distribution](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_distribution) | resource |
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aliases"></a> [aliases](#input\_aliases) | A list of CNAMEs (alternate domain names), if any, for this distribution. | `list(string)` | `[]` | no |
| <a name="input_allowed_methods"></a> [allowed\_methods](#input\_allowed\_methods) | HTTP methods that CloudFront processes and forwards to your Amazon S3 bucket or your custom origin. | `list(string)` | <pre>[<br>  "DELETE",<br>  "GET",<br>  "HEAD",<br>  "OPTIONS",<br>  "PATCH",<br>  "POST",<br>  "PUT"<br>]</pre> | no |
| <a name="input_cache_path_pattern"></a> [cache\_path\_pattern](#input\_cache\_path\_pattern) | Whether you want CloudFront to forward query strings to the origin that is associated with this cache behavior. | `bool` | `false` | no |
| <a name="input_cached_methods"></a> [cached\_methods](#input\_cached\_methods) | HTTP methods for which CloudFront caches responses. | `list(string)` | <pre>[<br>  "GET",<br>  "HEAD"<br>]</pre> | no |
| <a name="input_cloudfront_default_certificate"></a> [cloudfront\_default\_certificate](#input\_cloudfront\_default\_certificate) | Whether you want CloudFront to automatically create a CloudFront default certificate. | `bool` | `true` | no |
| <a name="input_comment"></a> [comment](#input\_comment) | Any comments you want to include about the distribution. | `string` | `"My comment"` | no |
| <a name="input_default_cache_query_string"></a> [default\_cache\_query\_string](#input\_default\_cache\_query\_string) | Indicates whether CloudFront automatically includes query strings in requests that it sends to the origin. | `bool` | `false` | no |
| <a name="input_default_default_ttl"></a> [default\_default\_ttl](#input\_default\_default\_ttl) | The default amount of time that you want objects to stay in CloudFront caches before CloudFront queries your origin to see whether the object has been updated. | `number` | `86400` | no |
| <a name="input_default_index_object"></a> [default\_index\_object](#input\_default\_index\_object) | The object that you want CloudFront to request from your origin (for example, index.html) when a viewer requests the root URL for your distribution (http://www.example.com) instead of an object in your distribution (http://www.example.com/product-description.html). | `string` | `"index.html"` | no |
| <a name="input_default_max_ttl"></a> [default\_max\_ttl](#input\_default\_max\_ttl) | The maximum amount of time that you want objects to stay in CloudFront caches before CloudFront queries your origin to see whether the object has been updated. | `number` | `31536000` | no |
| <a name="input_default_min_ttl"></a> [default\_min\_ttl](#input\_default\_min\_ttl) | The minimum amount of time that you want objects to stay in CloudFront caches before CloudFront queries your origin to see whether the object has been updated. | `number` | `0` | no |
| <a name="input_default_viewer_protocol_policy"></a> [default\_viewer\_protocol\_policy](#input\_default\_viewer\_protocol\_policy) | The protocol that viewers can use to access the files in the origin specified by TargetOriginId when a request matches the path pattern in PathPattern. | `string` | `"redirect-to-https"` | no |
| <a name="input_defaut_cookies_forward"></a> [defaut\_cookies\_forward](#input\_defaut\_cookies\_forward) | Specifies which cookies to forward to the origin for this cache behavior: all, none or whitelist. | `bool` | `false` | no |
| <a name="input_distribution_type"></a> [distribution\_type](#input\_distribution\_type) | The type of distribution to create. Valid values: 's3', 'load-balancer', 'lambda', 'custom-origin' | `string` | `"s3"` | no |
| <a name="input_enable_ipv6"></a> [enable\_ipv6](#input\_enable\_ipv6) | Whether the IPv6 is enabled for the distribution. | `bool` | `true` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | The environment name. | `string` | `"dev"` | no |
| <a name="input_extra_tags"></a> [extra\_tags](#input\_extra\_tags) | Extra tags to add to the bucket | `map(string)` | `{}` | no |
| <a name="input_geo_locations"></a> [geo\_locations](#input\_geo\_locations) | The country codes for the countries that you want CloudFront either to distribute your content (whitelist) or not distribute your content (blacklist). | `list(string)` | <pre>[<br>  "US",<br>  "CA",<br>  "GB",<br>  "DE"<br>]</pre> | no |
| <a name="input_include_cookies"></a> [include\_cookies](#input\_include\_cookies) | Specifies whether you want CloudFront to forward cookies to the origin that is associated with this cache behavior. | `bool` | `false` | no |
| <a name="input_include_logs"></a> [include\_logs](#input\_include\_logs) | Whether you want CloudFront to save access logs to an Amazon S3 bucket. | `bool` | `true` | no |
| <a name="input_is_enable"></a> [is\_enable](#input\_is\_enable) | Whether the distribution is enabled to accept end user requests for content. | `bool` | `true` | no |
| <a name="input_log_prefix"></a> [log\_prefix](#input\_log\_prefix) | An optional string that you want CloudFront to prefix to the access log filenames for this distribution, for example, myprefix/. If you want to enable logging, but you don't want to specify a prefix, you still must include an empty Prefix element in the Logging element. | `string` | `"myprefix"` | no |
| <a name="input_path_allowed_methods"></a> [path\_allowed\_methods](#input\_path\_allowed\_methods) | HTTP methods that CloudFront processes and forwards to your Amazon S3 bucket or your custom origin. | `list(string)` | <pre>[<br>  "DELETE",<br>  "GET",<br>  "HEAD",<br>  "OPTIONS",<br>  "PATCH",<br>  "POST",<br>  "PUT"<br>]</pre> | no |
| <a name="input_path_cache_query_string"></a> [path\_cache\_query\_string](#input\_path\_cache\_query\_string) | Indicates whether CloudFront automatically includes query strings in requests that it sends to the origin. | `bool` | `false` | no |
| <a name="input_path_cached_methods"></a> [path\_cached\_methods](#input\_path\_cached\_methods) | HTTP methods for which CloudFront caches responses. | `list(string)` | <pre>[<br>  "GET",<br>  "HEAD"<br>]</pre> | no |
| <a name="input_path_cookies_forward"></a> [path\_cookies\_forward](#input\_path\_cookies\_forward) | Specifies which cookies to forward to the origin for this cache behavior: all, none or whitelist. | `bool` | `false` | no |
| <a name="input_path_default_ttl"></a> [path\_default\_ttl](#input\_path\_default\_ttl) | The default amount of time that you want objects to stay in CloudFront caches before CloudFront queries your origin to see whether the object has been updated. | `number` | `86400` | no |
| <a name="input_path_max_ttl"></a> [path\_max\_ttl](#input\_path\_max\_ttl) | The maximum amount of time that you want objects to stay in CloudFront caches before CloudFront queries your origin to see whether the object has been updated. | `number` | `31536000` | no |
| <a name="input_path_min_ttl"></a> [path\_min\_ttl](#input\_path\_min\_ttl) | The minimum amount of time that you want objects to stay in CloudFront caches before CloudFront queries your origin to see whether the object has been updated. | `number` | `0` | no |
| <a name="input_path_origin_id_name"></a> [path\_origin\_id\_name](#input\_path\_origin\_id\_name) | A unique identifier that specifies the AWS origin. | `string` | `"myOrigin"` | no |
| <a name="input_path_pattern"></a> [path\_pattern](#input\_path\_pattern) | The pattern (for example, images/*.jpg) that specifies which requests to apply the behavior to. | `string` | `"/content/*"` | no |
| <a name="input_path_viewer_protocol_policy"></a> [path\_viewer\_protocol\_policy](#input\_path\_viewer\_protocol\_policy) | The protocol that viewers can use to access the files in the origin specified by TargetOriginId when a request matches the path pattern in PathPattern. | `string` | `"redirect-to-https"` | no |
| <a name="input_price_class"></a> [price\_class](#input\_price\_class) | The price class that corresponds with the maximum price that you want to pay for CloudFront service. | `string` | `"PriceClass_100"` | no |
| <a name="input_restriction_type"></a> [restriction\_type](#input\_restriction\_type) | The restriction type to impose on user requests. Valid values: none, whitelist, blacklist. | `string` | `"whitelist"` | no |
| <a name="input_s3_domain_name"></a> [s3\_domain\_name](#input\_s3\_domain\_name) | The domain name of the S3 bucket to associate with the distribution. The S3 bucket must be in the same region as the CloudFront distribution. | `string` | `"mybucket.s3.amazonaws.com"` | no |
| <a name="input_s3_origin_id_name"></a> [s3\_origin\_id\_name](#input\_s3\_origin\_id\_name) | A unique identifier that specifies the AWS S3 origin. | `string` | `"myS3Origin"` | no |
## Outputs

| Name | Description |
|------|-------------|
| <a name="output_cloudfront_distribution_arn"></a> [cloudfront\_distribution\_arn](#output\_cloudfront\_distribution\_arn) | The ARN (Amazon Resource Name) for the distribution. For example: arn:aws:cloudfront::123456789012:distribution/EDFDVBD632BHDS5, where 123456789012 is your AWS account ID. |
| <a name="output_cloudfront_distribution_domain_name"></a> [cloudfront\_distribution\_domain\_name](#output\_cloudfront\_distribution\_domain\_name) | The domain name corresponding to the distribution. For example: d604721fxaaqy9.cloudfront.net. |
| <a name="output_cloudfront_distribution_etag"></a> [cloudfront\_distribution\_etag](#output\_cloudfront\_distribution\_etag) | The current version of the distribution's information. For example: E2QWRUHAPOMQZL. |
| <a name="output_cloudfront_distribution_hosted_zone_id"></a> [cloudfront\_distribution\_hosted\_zone\_id](#output\_cloudfront\_distribution\_hosted\_zone\_id) | The CloudFront Route 53 zone ID that can be used to route an Alias Resource Record Set to. This attribute is simply an alias for the zone ID Z2FDTNDATAQYW2. |
| <a name="output_cloudfront_distribution_id"></a> [cloudfront\_distribution\_id](#output\_cloudfront\_distribution\_id) | The identifier for the distribution. For example: EDFDVBD632BHDS5. |
<!-- END_AUTOMATED_TF_DOCS_BLOCK -->