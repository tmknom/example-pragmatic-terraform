data "aws_vpc" "main" {
  tags = {
    Environment = "Staging"
  }
}

data "aws_subnet" "public" {
  tags = {
    Environment   = "Staging"
    Accessibility = "Public"
  }
}

output "vpc_id" {
  value       = data.aws_vpc.main.id
  description = "The ID of the Staging VPC."
}

output "public_subnet_id" {
  value       = data.aws_subnet.public.id
  description = "The ID of the Public Subnet."
}
