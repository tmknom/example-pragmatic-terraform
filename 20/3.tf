terraform {
  backend "remote" {
    organization = "example_org"

    workspaces {
      name = "example_workspace"
    }
  }
}
