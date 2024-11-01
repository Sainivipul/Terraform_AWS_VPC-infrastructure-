variable "project_id"{
type = string 
description = " my terraform project "

}


variable "vpc_cidr"{
type = string 
description = "public subnet CIDR value "
default = " 10.0.0.0/16"

}

variable "cidr_public_subnet"{

type = list (string)
description = "public subnet CIDR value "
default = ["10.0.1.0/24", "10.0.2.0/24"]

}



variable "eu_availability_zone" {

type = list(string)
description = "Availibilty_zone "
default = ["eu-central-a1","eu-central-1b"]
}

variable "cidr_private_subnet" {
type = list(string)
description = "private subnet CIDR value "
default = ["10.0.3.0/24","10.0.4.0/24"]

}