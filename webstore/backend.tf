terraform {
  backend "s3" {
    bucket  = "app-remote-state"
    key     = "website-ecs"
    region  = "eu-central-1"
    profile = "terraform"
  }
}