resource "aws_s3_bucket" "prevent_destroy_bucket" {
  bucket = "prevent-destroy-pragmatic-terraform"

  lifecycle {
    prevent_destroy = true
  }
}
