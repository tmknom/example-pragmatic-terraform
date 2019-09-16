module "allow_ssh" {
  source    = "./security_group"
  allow_ssh = true
}

output "allow_ssh_rule_id" {
  value = module.allow_ssh.allow_ssh_rule_id
}
