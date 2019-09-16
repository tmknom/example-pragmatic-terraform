resource "aws_instance" "example" {
  ami           = "ami-0c3fd0f5d33134a76"
  instance_type = "t3.micro"
}

output "example_instance_id" {
  value = aws_instance.example.id
}
