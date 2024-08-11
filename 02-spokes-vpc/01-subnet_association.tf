resource "aws_route_table_association" "rt_a_subnet1_spoke_vpc1" {
  subnet_id      = aws_subnet.subnet1_spoke_vpc1.id
  route_table_id = aws_route_table.rtb_spoke_vpc1.id
}

resource "aws_route_table_association" "rt_a_subnet2_spoke_vpc1" {
  subnet_id      = aws_subnet.subnet2_spoke_vpc1.id
  route_table_id = aws_route_table.rtb_spoke_vpc1.id
}
