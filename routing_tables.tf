# Resource: aws_route_table
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table

resource "aws_route_table" "public" {
  # the vpc id
  vpc_id = aws_vpc.my_vpc.id

  route {
    # the cidr block of the route
    cidr_block = "0.0.0.0/0"

    # identifier of a vpc interget gatewar or a virtual private gateway
    gateway_id = aws_internet_gateway.my-vpc-ig.id
  }
}

resource "aws_route_table" "private1" {
  # the vpc id
  vpc_id = aws_vpc.my_vpc.id

  route {
    # the cird block of the route
    cidr_block = "0.0.0.0/0"

    # identifier of a vpc nat gateway
    nat_gateway_id = aws_nat_gateway.gw1.id
  }
}

resource "aws_route_table" "private2" {
  # the vpc id
  vpc_id = aws_vpc.my_vpc.id

  route {
    # the cird block of the route
    cidr_block = "0.0.0.0/0"

    # identifier of a vpc nat gateway
    nat_gateway_id = aws_nat_gateway.gw2.id
  }
}