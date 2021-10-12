terraform {
  backend "remote" {
    organization = "fernando-msilva"

    workspaces {
      name = "hello-app"
    }
  }
}