################
## Main
################

resource "aws_instance" "example_ec2" {
    ami             = lookup(var.amis, var.aws_region)
    instance_type   = var.instance_type
    subnet_id       = aws_subnet.main_subnet.id

}

# VPC #
resource "aws_vpc" "main_vpc" {
    cidr_block = var.cidr_block  
}

# Subnet #
resource "aws_subnet" "main_subnet" {
    vpc_id      = aws_vpc.main_vpc.id
    cidr_block  = var.subnet_cidr_block

    tags = {
      Name = "Main Subnet"
    }
}
