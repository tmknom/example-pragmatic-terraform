module "complex_sg" {
  source = "./complex_security_group"

  ingress_rules = {
    http = {
      port        = 80
      cidr_blocks = ["10.0.0.0/8", "172.16.0.0/12", "192.168.0.0/16"]
    }
    https = {
      port        = 443
      cidr_blocks = ["0.0.0.0/0"]
    }
    redirect_http_to_https = {
      port        = 8080
      cidr_blocks = ["0.0.0.0/0"]
    }
  }
}
