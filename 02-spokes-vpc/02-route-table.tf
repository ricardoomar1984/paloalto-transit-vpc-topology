resource "aws_route_table" "rtb_spoke_vpc2" {
  vpc_id = aws_vpc.spoke_vpc2.id
  tags = {
     Name = "RT_SPOKE_VPC_ROMAR"
  }

}
