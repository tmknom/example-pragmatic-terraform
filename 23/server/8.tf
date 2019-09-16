data "aws_ssm_parameter" "vpc_id" {
  name = "/staging/vpc/id"
}

data "aws_ssm_parameter" "subnet_id" {
  name = "/staging/public/subnet/id"
}
