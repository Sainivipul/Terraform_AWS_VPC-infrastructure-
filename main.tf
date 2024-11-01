
provider "aws" {
  region = "us-west-2"  
}



resource "aws_vpc" "dhcp_server_vpc"{
cidr_block = var.vpc_cidr
tags ={
Name= "vpc: dhcp server vpc"

}
}