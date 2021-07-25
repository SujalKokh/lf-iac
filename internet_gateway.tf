# Resource: aws_internet_gateway
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/internet_gateway


resource "aws_internet_gateway" "my-vpc-ig" {
  # the VPCID to create the IG in
  vpc_id = aws_vpc.my_vpc.id

  # A map of tags to assign the resources
  tags = {
    Name = "lf-iac"
  }

}