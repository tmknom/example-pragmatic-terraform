variable "zone_name" {}

output "run_command_08" {
  value = <<-EOF
    curl http://${aws_lb.example.dns_name}
    echo
    curl http://${aws_route53_record.example.name}
    echo

    # ECSと紐付けないと503になるためaws_lb_listener_ruleを一旦削除
    terraform destroy -target=aws_lb_listener_rule.example -auto-approve
    sleep 20
    echo
    curl http://${aws_route53_record.example.name}:8080
    echo
    curl https://${aws_route53_record.example.name}
EOF
}

resource "null_resource" "enable_deletion_protection" {
  provisioner "local-exec" {
    command = local.enable_deletion_protection
  }

  triggers = {
    command  = local.enable_deletion_protection
    resource = aws_lb_listener_rule.example.arn
  }

  depends_on = [aws_lb.example, aws_lb_listener_rule.example]
}

locals {
  enable_deletion_protection = "aws elbv2 modify-load-balancer-attributes --load-balancer-arn ${aws_lb.example.arn} --attributes Key=deletion_protection.enabled,Value=false"
}
