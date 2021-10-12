terraform {
  required_providers {
    heroku = {
      source = "heroku/heroku"
      version = "4.6.0"
    }
  }
}

provider "heroku" {
  email = var.heroku_email
  api_key = var.heroku_api_key
}

resource "heroku_app" "app" {
  name = var.heroku_app_name
  region = "us"
}

resource "heroku_build" "app_build" {
  app = heroku_app.app.id
  buildpacks = [ "https://github.com/heroku/heroku-buildpack-nodejs#latest" ]

  source {
    path = "./src"
  }
}