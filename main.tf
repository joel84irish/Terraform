terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.0.11"
}

provider "aws" {
  region  = "eu-west-2"
}

resource "aws_instance" "web_server" {
  ami           = "ami-0f540e9f488cfa27d"
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleWebServer"
  }
}