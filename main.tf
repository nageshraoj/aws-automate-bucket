terraform {
  required_version = "~> 1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.44"
    }
  }
#   backend "s3" {
#     bucket = "tarun-080421"
#     key    = "mykeys"
#     region = "us-east-2"
#   }
}

provider "aws" {
#   profile = "default"
  region  = var.default_location
}