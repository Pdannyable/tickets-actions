# Terraform Settings Block
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0" # Optional but recommended in production
    }
  }
}

# Provider Block
provider "aws" {
  profile = "perso" # AWS Credentials Profile configured on your local desktop terminal  $HOME/.aws/credentials
  region  = "us-east-1"
}

# Resource Block

resource "aws_instance" "ec2demo" {
  ami           = "ami-016eb5d644c333ccb" # Amazon Linux in us-west-2, update as per your region
  instance_type = "t2.micro"

  tags = {
    Name = "myec2"
  }
}
