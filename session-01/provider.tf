terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.15.0"
    }
  }

  backend "s3" {
    bucket   = "roboshop-remote-state3"
    key = "foreach-demo"
    region = "us-east-1"
    dynamodb_table = "roboshop-locking"
  }
}

provider "aws" {
    # configuration options
    #you can give access key and secret key here, but security problem
   region = "us-east-1"
}    

