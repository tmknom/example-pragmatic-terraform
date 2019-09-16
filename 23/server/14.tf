data "aws_vpc" "staging" {
  tags = {
    Environment = "Staging"
  }
}

data "aws_subnet" "public_staging" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.staging.id]
  }

  filter {
    name   = "cidr-block"
    values = ["192.168.0.0/24"]
  }
}
