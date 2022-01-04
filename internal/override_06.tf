resource "aws_s3_bucket" "private" {
  bucket = "private-pragmatic-terraform-override"

  versioning {
    enabled = true
  }

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
}

resource "aws_s3_bucket" "public" {
  bucket = "public-pragmatic-terraform-override"
  acl    = "public-read"

  cors_rule {
    allowed_origins = ["https://example.com"]
    allowed_methods = ["GET"]
    allowed_headers = ["*"]
    max_age_seconds = 3000
  }
}

resource "aws_s3_bucket" "alb_log" {
  bucket = "alb-log-pragmatic-terraform-override"

  lifecycle_rule {
    enabled = true

    expiration {
      days = "180"
    }
  }
}

resource "aws_s3_bucket" "force_destroy" {
  bucket        = "force-destroy-pragmatic-terraform-override"
  force_destroy = true
}
