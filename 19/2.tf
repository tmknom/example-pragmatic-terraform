resource "aws_vpc" "examples" {
  count      = 3
  cidr_block = "10.${count.index}.0.0/16"
}
