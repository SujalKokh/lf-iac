# Resource: aws_eip
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eip

resource "aws_eip" "nat1" {
  # EIP may require IG to exist prior to association.
  # Use depends_on to set an dependency explicitely with IG
  depends_on = [aws_internet_gateway.my-vpc-ig]
}

resource "aws_eip" "nat2" {
  # EIP may require IG to exist prior to association.
  # Use depends_on to set an dependency explicitely with IG
  depends_on = [aws_internet_gateway.my-vpc-ig]
}