terraform {
    required_providers {
        aws = {
            source = "hasicorp/aws
            version = "5.37.0"
        }
    }
}

resource "aws_s3_bucket" "my_bucket" {
    bucket = var.bucket_name
    
    variable "bucket_name" {
      type        =string
      description = "my vaiable used to set bucket name"
      default     = "my_default_bucket_name"}
    }
}

data "aws_s3_bucket" "my_external_bucket" {
    bucket = "not-managed-by-us"
}

locals {
  local_example = "This is a local vaiable"
}

module "my_module" {
  source + "./module-example"
}
