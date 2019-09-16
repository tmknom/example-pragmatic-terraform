module "simple_sg" {
  source = "./simple_security_group"
  ports  = [80, 443, 8080]
}
