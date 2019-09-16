resource "aws_s3_bucket" "force_destroy" {
  bucket        = "force-destroy-pragmatic-terraform"
  force_destroy = true
}
