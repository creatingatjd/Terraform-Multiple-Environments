
provider "aws" {
  region = var.region  # Replace this with your desired AWS region
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key

  # Other optional configuration settings can be added here if needed
}

terraform {
  backend "s3" {
    bucket = "my-tf-test-bucketsiri"
    region = "us-west-2"
    key    = "terraform-dev/terraform.tfstate"
    profile = "default"
  }
}