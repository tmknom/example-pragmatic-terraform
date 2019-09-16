variable "cidr_block" {
  description = "The CIDR block for the VPC."
}

output "vpc_id" {
  value       = aws_vpc.example.id
  description = "The ID of the VPC."
}
