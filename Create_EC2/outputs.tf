# EC2 #
output "ec2_id" {
  description = "The instance ID."
  value       = aws_instance.example_ec2.id
}
output "ec2_arn" {
  description = "The ARN of the instance."
  value       = aws_instance.example_ec2.arn
}
output "ec2_availability_zone" {
  description = "The availability zone of the instance."
  value       = aws_instance.example_ec2.availability_zone
}
output "ec2_placement_group" {
  description = "The placement group of the instance."
  value       = aws_instance.example_ec2.placement_group
}
output "ec2_key_name" {
  description = "The key name of the instance"
  value       = aws_instance.example_ec2.key_name
}
output "ec2_password_data" {
  description = "Base-64 encoded encrypted password data for the instance. Useful for getting the administrator password for instances running Microsoft Windows. This attribute is only exported if get_password_data is true. Note that this encrypted value will be stored in the state file, as with all exported attributes. See GetPasswordData for more information."
  value       = aws_instance.example_ec2.password_data
}
output "ec2_public_dns" {
  description = "The public DNS name assigned to the instance. For EC2-VPC, this is only available if you've enabled DNS hostnames for your VPC"
  value       = aws_instance.example_ec2.public_dns
}
output "ec2_public_ip" {
  description = "The public IP address assigned to the instance, if applicable. NOTE: If you are using an aws_eip with your instance, you should refer to the EIP's address directly and not use public_ip, as this field will change after the EIP is attached."
  value       = aws_instance.example_ec2.public_ip
}
output "ec2_ipv6_addresses" {
  description = "A list of assigned IPv6 addresses, if any"
  value       = aws_instance.example_ec2.ipv6_addresses
}
output "ec2_primary_network_interface_id" {
  description = "The ID of the instance's primary network interface."
  value       = aws_instance.example_ec2.primary_network_interface_id
}
output "ec2_private_dns" {
  description = "The private DNS name assigned to the instance. Can only be used inside the Amazon EC2, and only available if you've enabled DNS hostnames for your VPC"
  value       = aws_instance.example_ec2.private_dns
}
output "ec2_private_ip" {
  description = "The private IP address assigned to the instance"
  value       = aws_instance.example_ec2.private_ip
}
output "ec2_security_groups" {
  description = "The associated security groups."
  value       = aws_instance.example_ec2.security_groups
}
output "ec2_vpc_security_group_ids" {
  description = "The associated security groups in non-default VPC"
  value       = aws_instance.example_ec2.vpc_security_group_ids
}
output "ec2_subnet_id" {
  description = "The VPC subnet ID."
  value       = aws_instance.example_ec2.subnet_id
}
output "ec2_outpost_arn" {
  description = "The ARN of the Outpost the instance is assigned to."
  value       = aws_instance.example_ec2.outpost_arn
}
output "ec2_credit_specification" {
  description = "Credit specification of instance."
  value       = aws_instance.example_ec2.credit_specification
}

# VPC #
output "vpc_arn" {
  description = "Amazon Resource Name (ARN) of VPC"
  value = aws_vpc.main_vpc.arn
}
output "vpc_id" {
  description = "The ID of the VPC"
  value = aws_vpc.main_vpc.id
}
output "vpc_cidr_block" {
  description = "The CIDR block of the VPC"
  value = aws_vpc.main_vpc.cidr_block
}
output "vpc_instance_tenancy" {
  description = "Tenancy of instances spin up within VPC."
  value = aws_vpc.main_vpc.instance_tenancy
}
output "vpc_enable_dns_support" {
  description = "Whether or not the VPC has DNS support"
  value = aws_vpc.main_vpc.enable_dns_support
}
output "vpc_enable_dns_hostnames" {
  description = "Whether or not the VPC has DNS hostname support"
  value = aws_vpc.main_vpc.enable_dns_hostnames
}
output "vpc_main_route_table_id" {
  description = "The ID of the main route table associated with this VPC. Note that you can change a VPC's main route table by using an aws_main_route_table_association."
  value = aws_vpc.main_vpc.main_route_table_id
}
output "vpc_default_network_acl_id" {
  description = "The ID of the network ACL created by default on VPC creation"
  value = aws_vpc.main_vpc.default_network_acl_id
}
output "vpc_default_security_group_id" {
  description = "The ID of the security group created by default on VPC creation"
  value = aws_vpc.main_vpc.default_security_group_id
}
output "vpc_default_route_table_id" {
  description = "The ID of the route table created by default on VPC creation"
  value = aws_vpc.main_vpc.default_route_table_id
}
output "vpc_ipv6_association_id" {
  description = "The association ID for the IPv6 CIDR block."
  value = aws_vpc.main_vpc.ipv6_association_id
}
output "vpc_ipv6_cidr_block" {
  description = "The IPv6 CIDR block."
  value = aws_vpc.main_vpc.ipv6_cidr_block
}
output "vpc_owner_id" {
  description = "The ID of the AWS account that owns the VPC."
  value = aws_vpc.main_vpc.owner_id
}

# subnet #
output "subnet_id" { 
  description = "The ID of the subnet"
  value = aws_subnet.main_subnet.id
}
output "subnet_arn" { 
  description = "The ARN of the subnet."
  value = aws_subnet.main_subnet.arn
}
output "subnet_ipv6_cidr_block_association_id" { 
  description = "The association ID for the IPv6 CIDR block."
  value = aws_subnet.main_subnet.ipv6_cidr_block_association_id
}
output "subnet_owner_id" { 
  description = "The ID of the AWS account that owns the subnet."
  value = aws_subnet.main_subnet.owner_id
}