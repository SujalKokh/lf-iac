# Resource: aws subnet
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet

resource "aws_subnet" "public_1" {
  # The VPC ID
  vpc_id = aws_vpc.my_vpc.id

  # CIDR block for the subnet
  cidr_block = "10.0.0.0/18"

  # AZ for the subnet
  availability_zone = "ap-northeast-1a"

  # instances launced in the subnet should be assigned ip
  map_public_ip_on_launch = true

  tags = {
    Name = "public-ap-northeast-1a"
  }
}

resource "aws_subnet" "public_2" {
  # The VPC ID
  vpc_id = aws_vpc.my_vpc.id

  # CIDR block for the subnet
  cidr_block = "10.0.64.0/18"

  # AZ for the subnet
  availability_zone = "ap-northeast-1d"

  # instances launced in the subnet should be assigned ip
  map_public_ip_on_launch = true

  tags = {
    Name = "public-ap-northeast-1d"
  }
}

resource "aws_subnet" "private_1" {
  # The VPC ID
  vpc_id = aws_vpc.my_vpc.id

  # CIDR block for the subnet
  cidr_block = "10.0.128.0/18"

  # AZ for the subnet
  availability_zone = "ap-northeast-1a"

  tags = {
    Name = "private-ap-northeast-1a"
  }
}


resource "aws_subnet" "private_2" {
  # The VPC ID
  vpc_id = aws_vpc.my_vpc.id

  # CIDR block for the subnet
  cidr_block = "10.0.192.0/18"

  # AZ for the subnet
  availability_zone = "ap-northeast-1d"

  tags = {
    Name = "private-ap-northeast-1d"
  }
}