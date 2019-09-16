resource "aws_ssm_parameter" "db_raw_password" {
  name        = "/db/raw_password"
  value       = "VeryStrongPassword!"
  type        = "SecureString"
  description = "データベースのパスワード"
}
