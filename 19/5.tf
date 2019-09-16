module "disallow_ssh" {
  source    = "./security_group"
  allow_ssh = false
}

output "disallow_ssh_rule_id" {
  value = module.disallow_ssh.allow_ssh_rule_id
}
