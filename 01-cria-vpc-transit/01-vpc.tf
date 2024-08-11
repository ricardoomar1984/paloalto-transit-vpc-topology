resource "aws_vpc" "transit_vpc" {
  cidr_block           = var.cidr_vpc_transit
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags = {
    Environment = var.nome_tag
    Name = "TRANSIT_VPC_ROMAR"
  }

}