provider "aws" {
  region = "ap-northeast-1"
}

resource "aws_security_group" "web_server" {
  name        = "web-server"
  description = "Example"
}
