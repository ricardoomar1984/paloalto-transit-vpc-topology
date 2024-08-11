resource "aws_vpn_gateway" "spoke_vpc2_vpn_gw" {
  vpc_id = aws_vpc.spoke_vpc2.id
  amazon_side_asn = "65502"  # ASN da Amazon
  
  tags = {
    Name = "SPOKE_VPC2_VPN_GW"
  }
}

resource "aws_vpn_gateway_attachment" "spoke_vpc2_vpn_gw_attach" {
  vpc_id        = aws_vpc.spoke_vpc2.id
  vpn_gateway_id = aws_vpn_gateway.spoke_vpc2_vpn_gw.id
}


