terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}
variable "main_Region" {
    description = "AWS region for all activities"
    default = "ap-south-1"  
}

# Configure the AWS Provider
provider "aws" {
  region = var.main_Region
}

resource "aws_instance" "MyIncidentNew" {
  ami           = "ami-00af95fa354fdb788"
  instance_type = "t2.micro"

  tags = {
    Name = "MyIncidentNew"
  }

}
output "aws_instance_private_ip" {
    value = aws_instance.MyIncident.public_ip
}
