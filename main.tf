// define provedor
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

// define a região da instância
provider "aws" {
  region  = "us-west-2"
}


// ddefine as configurações de recursos
resource "aws_instance" "app_server" {
  ami           = "ami-0fcf52bcf5db7b003"
  instance_type = "t2.micro"
  key_name = "iac-alura"

  tags = {
    Name = "Primeira Instância"
  }
}