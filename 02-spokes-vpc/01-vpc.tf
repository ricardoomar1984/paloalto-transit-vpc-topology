resource "aws_vpc" "spoke_vpc1" {
  cidr_block           = var.cidr_spoke_vpc1
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags = {
    Name = "SPOKE_VPC1_ROMAR"
  }

}
