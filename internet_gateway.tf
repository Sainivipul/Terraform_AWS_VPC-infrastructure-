resource "aws_internet_gateway" "igw"{

vpc_id = aws_vpc.dhcp_server_vpc.id

tags= {
Name = "IGW : for dhcp_server_public_subnet"
}

}