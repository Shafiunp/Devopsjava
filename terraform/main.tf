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
resource "aws_default_vpc" "default" {
  tags = {
    Name = "Default VPC"
  }
}
resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "main"
  }
}
resource "aws_default_subnet" "default_az1" {
  availability_zone = "us-west-2a"

  tags = {
    Name = "Default subnet for us-west-2a"
  }
}
resource "aws_nat_gateway" "example" {
  connectivity_type = "private"
  subnet_id         = aws_subnet.example.id
}
resource "aws_lb" "test" {
  name               = "test-lb-tf"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.lb_sg.id]
  subnets            = [for subnet in aws_subnet.public : subnet.id]

  enable_deletion_protection = true

  access_logs {
    bucket  = aws_s3_bucket.lb_logs.bucket
    prefix  = "test-lb"
    enabled = true
  }
  tags = {
    Environment = "production"
  }
  }
  resource "aws_instance" "foo" {
  ami           = "ami-06ee4e2261a4dc5c3" 
  instance_type = "t2.micro"
}
resource "aws_instance" "foo" {
  ami           = "ami-06ee4e2261a4dc5c3" 
  instance_type = "t2.micro"
}
resource "aws_instance" "foo" {
  ami           = "ami-06ee4e2261a4dc5c3" 
  instance_type = "t2.micro"
}


