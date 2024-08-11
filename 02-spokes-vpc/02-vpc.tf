resource "aws_vpc" "spoke_vpc2" {
  cidr_block           = var.cidr_spoke_vpc2
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags = {
    Name = "SPOKE_VPC1_ROMAR"
  }

}
