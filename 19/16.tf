module "virginia" {
  source = "./vpc"

  providers = {
    aws = aws.virginia
  }
}

module "tokyo" {
  source = "./vpc"
}

output "module_virginia_vpc" {
  value = module.virginia.vpc_arn
}

output "module_tokyo_vpc" {
  value = module.tokyo.vpc_arn
}
