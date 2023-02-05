terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.53.0"
    }
  }
}

provider "aws" {
  # Configuration options
}


resource "aws_instance" "foo" {
  ami           = "ami-06ee4e2261a4dc5c3" 
  instance_type = "t2.micro"
}