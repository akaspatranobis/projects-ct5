terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.82.2"
    }
  }
  backend "s3" {
    bucket = "my-tf-test-bucket-sdsvdshdsghdgsdgs-new"
    key    = "ram/mytffiles/terraform.tfstate"
    region = "us-east-1" 

       
    # For State Locking
    dynamodb_table = "project-tf"    
  } 
}

#Partition Key of the dynamodb_table should be "LockID"



# Provider Block
provider "aws" {
  region  = "us-east-1"
}


resource "aws_instance" "ec2demo" {
  ami           = "ami-0533f2ba8a1995cf9"
  instance_type = "t2.micro"
}