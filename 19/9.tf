data "aws_elb_service_account" "current" {}

output "alb_service_account_id" {
  value = data.aws_elb_service_account.current.id
}
