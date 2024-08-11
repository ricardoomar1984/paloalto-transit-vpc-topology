resource "aws_subnet" "subnet1_spoke_vpc1" {
  vpc_id                  = aws_vpc.spoke_vpc1.id
  cidr_block              = var.cidr_subnet1_spoke_vpc1
  map_public_ip_on_launch = "true"
  availability_zone       = var.availability_zone_a
  tags = {
    Name = "SUBNET1_SPOKE_VPC_ROMAR"

   }
}
resource "aws_subnet" "subnet2_spoke_vpc1" {
  vpc_id                  = aws_vpc.spoke_vpc1.id
  cidr_block              = var.cidr_subnet2_spoke_vpc1
  map_public_ip_on_launch = "true"
  availability_zone       = var.availability_zone_b
  tags = {
    Name = "SUBNET2_SPOKE_VPC_ROMAR"

  }
}