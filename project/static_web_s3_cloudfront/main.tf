# main.tf
provider "aws" {
  region = var.region
}

resource "aws_s3_bucket" "site" {
  bucket = var.bucket_name
  website {
    index_document = "index.html"
  }
  acl = "public-read"
}

resource "aws_s3_bucket_policy" "allow_public" {
  bucket = aws_s3_bucket.site.id
  policy = jsonencode({
    Statement = [{
      Effect    = "Allow"
      Principal = "*"
      Action    = ["s3:GetObject"]
      Resource  = "${aws_s3_bucket.site.arn}/*"
    }]
  })
}

resource "aws_cloudfront_distribution" "cdn" {
  origin {
    domain_name = aws_s3_bucket.site.website_endpoint
    origin_id   = "s3Origin"
    custom_origin_config {
      http_port              = 80
      https_port             = 443
      origin_protocol_policy = "http-only"
    }
  }

  enabled             = true
  default_root_object = "index.html"
  default_cache_behavior {
    target_origin_id       = "s3Origin"
    viewer_protocol_policy = "redirect-to-https"
    allowed_methods        = ["GET", "HEAD"]
    cached_methods         = ["GET", "HEAD"]
    forwarded_values {
      query_string = false
      cookies {
        forward = "none"
      }
    }
  }

  viewer_certificate {
    cloudfront_default_certificate = true
  }
}
