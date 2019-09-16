terraform {
  backend "s3" {
    bucket = "tfstate-pragmatic-terraform"
    key    = "example/terraform.tfstate"
    region = "ap-northeast-1"
  }
}
