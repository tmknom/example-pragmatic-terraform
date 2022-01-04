resource "aws_s3_bucket" "cloudwatch_logs" {
  bucket        = "cloudwatch-logs-pragmatic-terraform-override"
  force_destroy = true

  lifecycle_rule {
    enabled = true

    expiration {
      days = "180"
    }
  }
}
