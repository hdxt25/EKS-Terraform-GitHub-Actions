terraform {
  required_version = "~> 1.14.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.22.0"
    }
  }
  backend "s3" {
    bucket       = "dev-tf-bucket-23112025"
    region       = "us-east-2"
    key          = "eks/terraform.tfstate"
    use_lockfile = true //in new tf version, dynamodb_table is deprecated.
    encrypt      = true
  }
}

provider "aws" {
  region = var.aws-region
}
