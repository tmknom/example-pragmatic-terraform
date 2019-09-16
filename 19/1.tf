variable "env" {}

resource "aws_instance" "example" {
  ami           = "ami-0c3fd0f5d33134a76"
  instance_type = var.env == "prod" ? "m5.large" : "t3.micro"
}
