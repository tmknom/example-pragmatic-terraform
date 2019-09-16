resource "aws_security_group" "example" {
  name   = "example"
  vpc_id = aws_vpc.example.id
}
