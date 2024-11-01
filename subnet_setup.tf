resource "aws_subnet" "dhcp_public_subnet"{

count = length(var.cidr_public_subnet)

vpc_id = aws_vpc.dhcp_server_vpc.id

cidr_block = element(var.cidr_public_subnet, count.index)

availability_zone  = element(var.eu_availability_zone, count.index)

tags= {
Name = "subnet : dhcp_server_public_subnet ${count.index +1}"

}

}

resource "aws_subnet" "dhcp_server_private_subnet" {

  count = length(var.cidr_private_subnet)
  vpc_id = aws_vpc.dhcp_server_vpc.id

  cidr_block = element(var.cidr_private_subnet, count.index)

  availability_zone = element(var.eu_availability_zone, count.index)

  tags = {
    Name = "subnet: private subnet ${count.index + 1}"
  }
}
