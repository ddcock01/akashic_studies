terraform {
  required_version = "~> 1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

provider "aws" {
  region = "eu-west-1"
  alias  = "eu-west"
}

resource "aws_s3_bucket" "us_east_1" {
  bucket = "exercise08-bucket-1"
}

resource "aws_s3_bucket" "eu_west_1" {
  bucket = "exercise08-bucket-2"
  provider = aws.eu-west
}
