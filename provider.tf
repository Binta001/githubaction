provider "aws" {
  region     = "us-east-1"
}

terraform {
  backend "s3" {
    bucket         = "myoumbucket"
    dynamodb_table = "mytesttable"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
  }
}