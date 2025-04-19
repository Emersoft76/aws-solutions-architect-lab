output "site_url" {
  value = aws_s3_bucket.site.website_endpoint
}

output "cdn_url" {
  value = aws_cloudfront_distribution.cdn.domain_name
}
