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


resource "aws_instance" "foo1" {
  ami           = var.foo_ami
  instance_type = var.foo_instance_type
}




# resource "aws_default_vpc" "default" {
#   tags = {
#     Name = "Default VPC"
#   }
# }
# resource "aws_internet_gateway" "gw" {
#   vpc_id = aws_default_vpc.default.id

#   tags = {
#     Name = "main"
#   }
# }
# resource "aws_default_subnet" "default_az1" {
#   availability_zone = "ap-northeast-1"

#   tags = {
#     Name = "Default subnet for us-west-2a"
#   }
# }
# resource "aws_nat_gateway" "example" {
#   connectivity_type = "private"
#   subnet_id         = aws_default_subnet.default_az1.id
# }
# resource "aws_lb" "test" {
#   name               = "test-lb-tf"
#   internal           = false
#   load_balancer_type = "application"
#   security_groups    = [aws_security_group.allow_tls.id]
#   subnets            = [for subnet in aws_default_subnet.public : subnet.id]

#   enable_deletion_protection = true

#   access_logs {
#     bucket  = aws_s3_bucket.lb_logs.bucket
#     prefix  = "test-lb"
#     enabled = true
#   }
#   tags = {
#     Environment = "production"
#   }
#   }
#   resource "aws_instance" "foo1" {
#   ami           = "ami-06ee4e2261a4dc5c3" 
#   instance_type = "t2.micro"
# }
# resource "aws_instance" "foo2" {
#   ami           = "ami-06ee4e2261a4dc5c3" 
#   instance_type = "t2.micro"
# }
# resource "aws_instance" "foo3" {
#   ami           = "ami-06ee4e2261a4dc5c3" 
#   instance_type = "t2.micro"
# }
# resource "aws_security_group" "allow_tls" {
#   name        = "allow_tls"
#   description = "Allow TLS inbound traffic"
#   vpc_id      = aws_default_vpc.default.i

#   ingress {
#     description      = "TLS from VPC"
#     from_port        = 443
#     to_port          = 443
#     protocol         = "tcp"
#     cidr_blocks      = [aws_default_vpc.default.cidr_block]
#     ipv6_cidr_blocks = [aws_default_vpc.default.ipv6_cidr_block]
#   }
# ingress {
#     description      = "TLS from VPC"
#     from_port        = 22
#     to_port          = 22
#     protocol         = "tcp"
#     cidr_blocks      = [aws_default_vpc.default.cidr_block]
#     ipv6_cidr_blocks = [aws_default_vpc.default.ipv6_cidr_block]
#   }
#   egress {
#     from_port        = 0
#     to_port          = 0
#     protocol         = "-1"
#     cidr_blocks      = ["0.0.0.0/0"]
#     ipv6_cidr_blocks = ["::/0"]
#      }

#   tags = {
#     Name = "allow_tls"
#   }
# }


