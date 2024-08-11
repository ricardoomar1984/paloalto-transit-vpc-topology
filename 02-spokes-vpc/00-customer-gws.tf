
data "local_file" "fw1_ip_address" {
  filename = "${path.module}/ip_eth1_firewall1.txt"
}

locals {
  fw1_ip_address = trimspace(data.local_file.fw1_ip_address.content)
}

resource "aws_customer_gateway" "firewall01" {
  bgp_asn    = 65001
  ip_address  = local.fw1_ip_address
  type        = "ipsec.1"
  
  tags = { 
    Name = "FW01-Transit_VPC"
  }
}


###################
# customer gw fw02#
###################

data "local_file" "fw2_ip_address" {
  filename = "${path.module}/ip_eth1_firewall2.txt"
}

locals {
  fw2_ip_address = trimspace(data.local_file.fw2_ip_address.content)
}

resource "aws_customer_gateway" "firewall02" {
  bgp_asn    = 65002
  ip_address  = local.fw2_ip_address
  type        = "ipsec.1"
  
  tags = { 
    Name = "FW02-Transit_VPC"
  }
}
