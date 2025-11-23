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
    use_lock_files = true  //in new tf version, dynamodb_table is deprecated.
    encrypt        = true
  }
}

provider "aws" {
  region = var.aws-region
}
