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

resource "aws_instance" "MyIncident" {
  ami           = "ami-0d54604676873b4ec"
  instance_type = "t3.micro"

  tags = {
    Name = "MyIncident"
  }

}
resource "aws_instance" "MyIncident2" {
  ami           = "ami-0d54604676873b4ec"
  instance_type = "t3.micro"

  tags = {
    Name = "MyIncident2"
  }

}
