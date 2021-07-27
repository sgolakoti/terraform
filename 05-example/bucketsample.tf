resource "aws_instance" "testbucket" {
  ami = "ami-074df373d6bafa625"
  instance_type = "t2.micro"
  tags = {
    name = "testbucket"
  }
}

terraform {
  backend "s3" {
    bucket = "terraform-state01"
    key    = "sample/terraform.tfstate"
    region = "us-east-1"
  }
}
provider "aws" {
  region = "us-east-1"
}