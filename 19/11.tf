provider "random" {}

resource "random_string" "password" {
  length  = 32
  special = false
}
