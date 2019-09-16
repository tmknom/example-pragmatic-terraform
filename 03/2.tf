locals {
  example_instance_type = "t3.micro"
}

resource "aws_instance" "example" {
  ami           = "ami-0c3fd0f5d33134a76"
  instance_type = local.example_instance_type
}
