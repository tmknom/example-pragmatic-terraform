data "aws_route53_zone" "example" {
  name = var.zone_name
}

resource "aws_route53_zone" "test_example" {
  name       = "test.${var.zone_name}"
  depends_on = []
}
