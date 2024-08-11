resource "aws_route_table_association" "rt_a_subnet1" {
  subnet_id      = aws_subnet.subnet1.id
  route_table_id = aws_route_table.rtb_transit_vpc.id
}

resource "aws_route_table_association" "rt_a_subnet2" {
  subnet_id      = aws_subnet.subnet2.id
  route_table_id = aws_route_table.rtb_transit_vpc.id
}
