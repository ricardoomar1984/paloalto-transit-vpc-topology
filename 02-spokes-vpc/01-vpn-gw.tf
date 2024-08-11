resource "aws_vpn_gateway" "spoke_vpc1_vpn_gw" {
  vpc_id = aws_vpc.spoke_vpc1.id
  amazon_side_asn = "65501"  # ASN da Amazon
  
  tags = {
    Name = "SPOKE_VPC1_VPN_GW"
  }
}

resource "aws_vpn_gateway_attachment" "spoke_vpc1_vpn_gw_attach" {
  vpc_id        = aws_vpc.spoke_vpc1.id
  vpn_gateway_id = aws_vpn_gateway.spoke_vpc1_vpn_gw.id
}


