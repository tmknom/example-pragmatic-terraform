resource "aws_instance" "invalid" {
  ami                  = "ami-0c3fd0f5d33134a76"
  instance_type        = "t1.2xlarge" # Invalid type
  iam_instance_profile = "Invalid"    # Not exists
}
