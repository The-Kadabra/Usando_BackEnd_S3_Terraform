terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"

  backend "s3" {
    bucket = "tfstate-505838347528"
    key    = "dev/terraform.tfstate"
    region = "us-east-1"
    }
}

provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

