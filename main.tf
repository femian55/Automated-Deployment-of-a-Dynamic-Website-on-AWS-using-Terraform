# configure aws provider
provider "aws" {
  region = "eu-west-2"
  profile = "terraform-user"
}

# stores the terraform state file in s3
terraform {
  backend "s3" {
    bucket = "mercy-terraform-remote-state"
    key    = "terraform.tfstate.dev"
    region = "eu-west-2"
    profile = "terraform-user"
  }
}