terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "produt_assets" {
  bucket = "ecommerce-dev-product-assets-ganapathi"
  tags = {
    Environment = "dev"
    Purpose     = "product-assets"
  }
}

