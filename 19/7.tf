data "aws_region" "current" {}

output "region_name" {
  value = data.aws_region.current.name
}
