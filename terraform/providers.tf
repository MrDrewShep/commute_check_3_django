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
