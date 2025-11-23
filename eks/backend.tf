terraform {
  required_version = "~> 1.14"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.22"
    }
  }
  backend "s3" {
    bucket         = "dev-aman-tf-bucket"
    region         = "us-east-1"
    key            = "eks/terraform.tfstate"
    dynamodb_table = "Lock-Files"            // use_lock_files = true  //in new tf version, dynamodb is not required.
    encrypt        = true
  }
}

provider "aws" {
  region = var.aws-region
}
