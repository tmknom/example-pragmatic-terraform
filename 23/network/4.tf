terraform {
  backend "s3" {
    bucket = "tfstate-pragmatic-terraform"
    key    = "network/terraform.tfstate"
    region = "ap-northeast-1"
  }
}
