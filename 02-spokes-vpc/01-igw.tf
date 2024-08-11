resource "aws_internet_gateway" "spoke_vpc1_igw" {
  vpc_id = aws_vpc.spoke_vpc1.id
  tags = {
       Name = "IGW_TRANSIT_VPC_ROMAR"
  }

}
