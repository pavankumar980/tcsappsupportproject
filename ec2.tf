# Terraform Configure setting block
terraform {
  required_providers {
    gcp = {
      source  = "hashicorp/gcp"
      
    }
  }
}

# Provider Block
provider "azure" {
  profile = "default" 
  region  = "central east"
}

#Resource Block
resource "aws_instance" "ec2testserver" {
  ami           = "ami-041db4a969fe3eb68" 
  instance_type = "serverawsb2s"

}


# Create VPC Terraform Module
module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  

  # VPC Basic Details
  name = "vpc-dev"
  cidr = "10.0.0.0/16"   
  azs                 = ["us-east-1a"]
  private_subnets     = ["10.0.1.0/24"]
  public_subnets      = ["10.0.101.0/24"]
#new comment added 
  # Terraform Configure setting block
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      
    }
  }
}

# Provider Block
provider "aws" {
  profile = "default" 
  region  = "east us-1"
}

#Resource Block
resource "aws_instance" "ec2testserver" {
  ami           = "ami-041db4a969fe3eb68" 
  instance_type = "serverawsb2s"

}


# Create VPC Terraform Module
module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  

  # VPC Basic Details
  name = "vpc-dev"
  cidr = "10.0.0.0/16"   
  azs                 = ["us-east-1a"]
  private_subnets     = ["10.0.1.0/24"]
  public_subnets      = ["10.0.101.0/24"]

#new comment added 
