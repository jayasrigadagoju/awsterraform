# -- provider.tf (Provider) -- #

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}


provider "aws" {
  region     = var.aws_region
 # access_key = "xxxx"
 # secret_key = "bo+xxxx+xxx" 
}

terraform {
 backend "s3" {
   bucket         = "terraform-state-0409"
   key            = "terraform/terraform.tfstate"
   region         = "us-east-1"
   # dynamodb_table = "terraform-state"
 }
}