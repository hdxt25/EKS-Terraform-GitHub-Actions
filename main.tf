terraform {
  required_version = "~> 1.14.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.22.0"
    }
  }
}


resource "aws_s3_bucket" "s3_bucket" {
  bucket = "dev-tf-bucket-23112025" # change this
}

# resource "aws_dynamodb_table" "Lock-Files" {
#   name           = "Lock-Files"
#   billing_mode   = "PAY_PER_REQUEST"
#   hash_key       = "LockID"

#   attribute {
#     name = "LockID"
#     type = "S"
#   }
# }