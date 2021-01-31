
# TODO do I put the EC2, RDS, and EIP all in their own .tf configs?
# TODO VPC and subnet .tf config?
    # Choose the Virtual Private Cloud (VPC) that defines the virtual 
    # networking environment for this DB instance. Only VPCs with a 
    # corresponding DB Subnet Group are listed.
# TODO add key pair
# TODO add security group policy to allow SSH

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.15.0"
    }
  }
}

provider "aws" {
  region = var.region
}

resource "aws_instance" "commute_check" {
  ami           = var.ami
  instance_type = "t2.micro"
  tags = {
    Name = "commute-check-v3-app"
  }
}

resource "aws_eip_association" "eip_association" {
  instance_id = aws_instance.commute_check.id
  public_ip   = var.eip
}
