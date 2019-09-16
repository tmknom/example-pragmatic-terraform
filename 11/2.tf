resource "aws_kms_alias" "example" {
  name          = "alias/example"
  target_key_id = aws_kms_key.example.key_id
}
