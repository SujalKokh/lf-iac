resource "aws_vpc" "my_vpc" {
  # CIDR block for the VPC
  cidr_block = "10.0.0.0/16"

  # Make instances shared on the host
  instance_tenancy = "default"

  # Enable.disable DNS support in the VPC
  enable_dns_support = true

  # Enable/disable DNS hostnames in the VPC
  enable_dns_hostnames = true

  # Clasiclink for the VPC
  enable_classiclink = false

  # Classiclink DNS support for the VPC
  enable_classiclink_dns_support = false

  # disabling ipv6
  assign_generated_ipv6_cidr_block = false

  tags = {
    Name = "lf-iac"
  }
}

output "vpc_id" {
  value       = aws_vpc.my_vpc.id
  description = "VPC id."

  # setting an output value as sensitive prevents terraform from 
  sensitive = false
}