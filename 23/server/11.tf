data "aws_vpc" "staging" {
  id = "vpc-0e3b095e9b542004c"
}

data "aws_subnet" "public_staging" {
  id = "subnet-061f6902b04084ae0"
}
