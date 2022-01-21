terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}


# Configure the AWS Provider
provider "aws" {
  region = "ap-northeast-2"

  # export AWS_ACCESS_KEY_ID="anaccesskey"
  # export AWS_SECRET_ACCESS_KEY="asecretkey"

  #access_key = var.aws_access_key
  #secert_key = var.aws_secert_key

  #profile = var.aws_profile
}

