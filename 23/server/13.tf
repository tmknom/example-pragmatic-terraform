data "aws_vpc" "staging" {
  tags = {
    Environment = "Staging"
  }
}

data "aws_subnet" "public_staging" {
  tags = {
    Environment   = "Staging"
    Accessibility = "Public"
  }
}
