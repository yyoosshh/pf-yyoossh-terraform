################
## Variables
################

variable "aws_profile" {}

# Region #
variable "aws_region" {
    default = "ap-northeast-1"
}

# VPC #
variable "cidr_block" {}

# Subnet #
variable "subnet_id" {}
variable "subnet_cidr_block" {}

# EC2 #
variable "instance_type" {}
variable "amis" {
    type = map(string)
    default = {
        ap-northeast-1 = "ami-034968955444c1fd9" # Tokyo
        ap-northeast-3 = "ami-089b2beceb9ced534" # Osaka
    }
  
}