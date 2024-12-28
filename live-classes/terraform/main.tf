terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.82.1"
    }
  }
}

provider "aws" {
  region = "us-east-1"

}

resource "aws_s3_bucket" "example" {
  bucket = "my-tf-test-bucket-sdsvdshdsghdgsdgs"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket" "example121" {
  bucket = "my-tf-test-bucket-sdsvdshdsghdgsdgs-new"

  tags = {
    Name        = "My bucket-1"
    Environment = "Stage"
  }
}