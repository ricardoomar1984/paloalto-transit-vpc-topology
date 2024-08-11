resource "aws_internet_gateway" "spoke_vpc2_igw" {
  vpc_id = aws_vpc.spoke_vpc2.id
  tags = {
       Name = "IGW_SPOKE_VPC2_ROMAR"
  }

}
