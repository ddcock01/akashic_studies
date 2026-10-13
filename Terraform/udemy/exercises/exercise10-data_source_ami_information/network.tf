resource "aws_vpc" "exercise10_vpc"{
  cidr_block = "10.5.0.0/16"
    tags = {
        Name = "exercise10_vpc"
    }
}