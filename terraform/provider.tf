terraform {
  required_version = "~> 1.5"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }

  backend "s3" {
   bucket = "abn-amro-case-sre"
   key    = "prod/terraform.tfstate"
   region = "eu-west-2"
  }
}

provider "aws" {
  region = "eu-central-1"
}