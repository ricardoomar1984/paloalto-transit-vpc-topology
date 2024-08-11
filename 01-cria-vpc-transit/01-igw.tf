resource "aws_internet_gateway" "transit_vpc_igw" {
  vpc_id = aws_vpc.transit_vpc.id
  tags = {
       Name = "IGW_TRANSIT_VPC_ROMAR"
  }

}