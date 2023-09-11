provider "aws" {
  region = var.region
  profile = "default"
}

terraform {
  backend "s3" {
    bucket = "my-tf-test-bucketsiri"
    region = "us-west-2"
    key    = "terraform-dev/terraform.tfstate"
    profile = "default"
  }
}