resource "aws_vpc" "virginia" {
  provider   = aws.virginia
  cidr_block = "192.168.0.0/16"
}

resource "aws_vpc" "tokyo" {
  cidr_block = "192.168.0.0/16"
}

output "virginia_vpc" {
  value = aws_vpc.virginia.arn
}

output "tokyo_vpc" {
  value = aws_vpc.tokyo.arn
}
