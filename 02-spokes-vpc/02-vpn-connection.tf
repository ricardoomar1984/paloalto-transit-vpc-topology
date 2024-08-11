##############
#VPN para FW1#
##############
resource "aws_vpn_connection" "vpn_spoke_vpc2_vpngw_x_fw01" {
  customer_gateway_id = aws_customer_gateway.firewall01.id
  vpn_gateway_id      = aws_vpn_gateway.spoke_vpc2_vpn_gw.id
  type                = "ipsec.1"
  
  # Sem rotas estáticas, pois estamos usando BGP para roteamento dinâmico
  static_routes_only = false

  tunnel1_preshared_key = "mySuperSecretKey123" 
  tunnel1_inside_cidr = "169.254.20.0/30"

  tunnel2_preshared_key = "mySuperSecretKey123" 
  tunnel1_inside_cidr = "169.254.21.0/30"

  tags = {
    Name = "vpn_spoke_vpc2_vpngw_x_fw01"
  }
}

##############
#VPN para FW2#
##############
resource "aws_vpn_connection" "vpn_spoke_vpc2_vpngw_x_fw02" {
  customer_gateway_id = aws_customer_gateway.firewall02.id
  vpn_gateway_id      = aws_vpn_gateway.spoke_vpc2_vpn_gw.id
  type                = "ipsec.1"
  
  # Sem rotas estáticas, pois estamos usando BGP para roteamento dinâmico
  static_routes_only = false

  tunnel1_preshared_key = "mySuperSecretKey123" 
  tunnel1_inside_cidr = "169.254.22.0/30"

  tunnel2_preshared_key = "mySuperSecretKey123" 
  tunnel1_inside_cidr = "169.254.23.0/30"


  tags = {
    Name = "vpn_spoke_vpc2_vpngw_x_fw02"
  }
}

