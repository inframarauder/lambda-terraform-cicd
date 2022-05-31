terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.15.1"
    }
  }

  backend "s3" {
    bucket         = "tf-remote-backend-lambda"
    key            = "terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "tf-state-lock"
  }
}

provider "aws" {
  region = var.region
}