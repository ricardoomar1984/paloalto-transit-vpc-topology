resource "aws_subnet" "subnet1" {
  vpc_id                  = aws_vpc.transit_vpc.id
  cidr_block              = var.cidr_subnet1_vpc_transit
  map_public_ip_on_launch = "true"
  availability_zone       = var.availability_zone_a
  tags = {
    Environment = var.nome_tag
    Name = "SUBNET1_TRANSIT_VPC_ROMAR"

   }
}
resource "aws_subnet" "subnet2" {
  vpc_id                  = aws_vpc.transit_vpc.id
  cidr_block              = var.cidr_subnet2_vpc_transit
  map_public_ip_on_launch = "true"
  availability_zone       = var.availability_zone_b
  tags = {
    Environment = var.nome_tag
    Name = "SUBNET2_TRANSIT_VPC_ROMAR"

  }
}