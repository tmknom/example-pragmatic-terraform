output "run_command_09" {
  value = <<-EOF
    curl http://${aws_lb.example.dns_name}
EOF
}
