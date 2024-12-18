terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region     = "ap-south-1"
  access_key = "AKIAY7DF6MZ26IZRZ67V"
  secret_key = "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"
}

resource "aws_instance" "webserver" {
  ami           = "ami-0a4408457f9a03be3"
  instance_type = "t2.micro"

  tags = {
    Name = "webserver-custom-module"
  }
}
