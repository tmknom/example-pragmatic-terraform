resource "aws_ssm_parameter" "vpc_id" {
  name  = "/staging/vpc/id"
  value = aws_vpc.staging.id
  type  = "String"
}

resource "aws_ssm_parameter" "subnet_id" {
  name  = "/staging/public/subnet/id"
  value = aws_subnet.public_staging.id
  type  = "String"
}
