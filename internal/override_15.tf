resource "aws_s3_bucket" "operation" {
  bucket        = "operation-pragmatic-terraform-override"
  force_destroy = true

  lifecycle_rule {
    enabled = true

    expiration {
      days = "180"
    }
  }
}
