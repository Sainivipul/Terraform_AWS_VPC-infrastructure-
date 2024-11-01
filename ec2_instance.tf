data "aws_subnet" "public_subnet" {
  filter {
   name = "tag: Name "
   values = ["subnet-public : public Subnet 1"]
      }

  depends_on = [

    aws_route_table_association.public_subnet_asso

      ]
}

resource "aws_instance" "dhcp_ec2" {

ami = "abc"
instance_type = "t2.micro"
tags = {
Name = "EC2 Public subnet 1"
}

key_name = "aws_key"
subnet_id = data.aws_subnet.public_subnet.id
vpc_security_group_ids= [aws_security_group.sg_vpc.id]

}

resource "aws_key_pair" "deployer"{

key_name = "aws_keys"
public_key = "ssh ijjj nbsiua buhjabsdjbkushsbhjkuibajbanjjbuakdbhvb "

}