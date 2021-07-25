# Resource: aws_route_table_association
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association

resource "aws_route_table_association" "public1" {
  # the submet id to create an association
  subnet_id = aws_subnet.public_1.id

  # the id of the routing table to associate with
  route_table_id = aws_route_table.public.id
}

resource "aws_route_table_association" "public2" {
  # the submet id to create an association
  subnet_id = aws_subnet.public_2.id

  # the id of the routing table to associate with
  route_table_id = aws_route_table.public.id
}

resource "aws_route_table_association" "private1" {
  # the submet id to create an association
  subnet_id = aws_subnet.private_1.id

  # the id of the routing table to associate with
  route_table_id = aws_route_table.private1.id
}

resource "aws_route_table_association" "private2" {
  # the submet id to create an association
  subnet_id = aws_subnet.private_2.id

  # the id of the routing table to associate with
  route_table_id = aws_route_table.private2.id
}