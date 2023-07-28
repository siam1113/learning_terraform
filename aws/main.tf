# This block contains Terraform settings, including the required providers
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

/* 
= Note: 
A provider is a plugin that Terraform uses to create and manage your resources.
You can use multiple provider blocks in your Terraform configuration to manage resources from different providers. 
*/
provider "aws" {
  region     = "us-west-2"
  access_key = ""
  secret_key = ""
}

# Resource blocks have two strings before the block: the resource type and the resource name
# Resource blocks contain arguments which you use to configure the resource. Arguments can include things # # like machine sizes, disk image names, or VPC IDs
resource "aws_instance" "app_server" {
  ami           = "ami-830c94e3"
  instance_type = "t2.micro"

  tags = {
    Name = "A1"
  }
}

resource "aws_instance" "app_server_2" {
  ami           = "ami-830c94e3"
  instance_type = "t2.micro"

  tags = {
    Name = "A2"
  }
}

/*
When you create a new configuration — or check out an existing configuration from version control — you need to initialize the directory with terraform init.
*/
