resource "aws_route_table" "rtb_transit_vpc" {
  vpc_id = aws_vpc.transit_vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.transit_vpc_igw.id
  }
  tags = {
     Name = "RT_TRANSIT_VPC_ROMAR"
  }

}