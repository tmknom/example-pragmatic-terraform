data "aws_availability_zones" "available" {
  state = "available"
}

output "availability_zones" {
  value = data.aws_availability_zones.available.names
}
