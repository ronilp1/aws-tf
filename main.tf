provider "aws" {
    region = "eu-west-3"
    access_key = "AKIA2XODZ4YHPN2OS6L4"
    secret_key = "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"
}

 resource "aws_vpc" "development-vpc" {
     cidr_block = "10.0.0.0/16"

     tags = {
         Name = "development"
         vpc_env: "dev"   

     }
 }

 resource "aws_subnet" "dev-subnet" {
     vpc_id = aws_vpc.development-vpc.id
     cidr_block = "10.0.10.0/24"
     availability_zone = "eu-west-3a"

      tags = {
         Name = "dev-subnet"
  

     }
 }
