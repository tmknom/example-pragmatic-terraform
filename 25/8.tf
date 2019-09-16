resource "aws_vpc" "vpc-0f4fa25a150ef7ac5" {
  assign_generated_ipv6_cidr_block = false
  cidr_block                       = "192.168.0.0/16"
  enable_classiclink               = false
  enable_classiclink_dns_support   = false
  enable_dns_hostnames             = false
  enable_dns_support               = true
  instance_tenancy                 = "default"
  tags                             {}
}
