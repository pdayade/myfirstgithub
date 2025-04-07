# # aws terraform providers 
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

#  Configure the AWS Provider
provider "aws" {
  region = "ap-south-1"
}


resource "aws_instance" "Myec2" {
  ami = "ami-002f6e91abff6eb96"
  instance_type = "t2.micro"
  
}

resource "aws_vpc" "main" {
 cidr_block = "10.0.0.0/16"
 
 tags = {
   Name = "Project VPC"
 }
}

resource "aws_vpc" "master" {
 cidr_block = "10.10.0.0/16"
 
 tags = {
   Name = "staging_Vpc"
 }
}