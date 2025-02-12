terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket         = "your-terraform-state-bucket" # Change this to your S3 bucket name
    key            = "eks/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks" # Optional: If using DynamoDB for state locking
  }
}

provider "aws" {
  region = var.aws_region
}