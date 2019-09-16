module "continuous_apply_codebuild_role" {
  source     = "./iam_role"
  name       = "continuous-apply"
  identifier = "codebuild.amazonaws.com"
  policy     = data.aws_iam_policy.administrator_access.policy
}

data "aws_iam_policy" "administrator_access" {
  arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}
