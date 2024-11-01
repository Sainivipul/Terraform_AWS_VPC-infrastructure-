resource "aws_route_table" "dhcp_server_public_route_table"{

vpc_id = aws_vpc.dhcp_server_vpc.id

route {

cidr_block = "0.0.0.0/0"
gateway_id = aws_internet_gateway.igw.id

}
tags = {
Name = " Route: for public subnet igw "

  }

}

resource "aws_route_table" "dhcp_server_private_route_table"{
count = length(var.cidr_private_subnet)
vpc_id = aws_vpc.dhcp_server_vpc.id
depends_on = [aws_nat_gateway.nat_gateway]
route {

cidr_block = "0.0.0.0/0"
nat_gateway_id = aws_nat_gateway.nat_gateway[count.index].id
}

tags = {

Name = "Rt : for private subnet of VPC"

}

}