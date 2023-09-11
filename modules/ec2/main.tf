resource "aws_instance" "demo_instance" {

  ami               = var.ami_id
  instance_type     = var.instance_type
  availability_zone = var.availability_zone

  tags = {
    "Name" = var.name
    "Env"  = var.env
  }
  provider "aws" {
  region = "us-west-2"  # Replace this with your desired AWS region
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key

  # Other optional configuration settings can be added here if needed
}


}
