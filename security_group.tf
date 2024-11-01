resource "aws_security_group" "sg_vpc" {
    egress = [
        {
            cidr_blocks = ["0.0.0.0/0"]
            description = "outgoing treaffic "
            from_port = 0 
            ipv6_cidr_blocks = []
            prefix_list_ids = []
            protocol = "-1"
            security_groups = []
            self = false
            to_port = 0 

        }
    ]

    ingress = [
        {
            cidr_blocks = ["0.0.0.0/0", ]
            description = "incoming treffic "
            from_port = 22
            ipv6_cidr_blocks = []
            prefix_list_ids =  []
            protocol = "tcp"
            security_groups = []
            self = false
            to_port = 22

        }
    ]
    vpc_id = aws_vpc.dhcp_server_vpc.id
    depends_on = [aws_vpc.dhcp_server_vpc]
    tags = {
        Name = "SG : aws _ security group "
    }

}