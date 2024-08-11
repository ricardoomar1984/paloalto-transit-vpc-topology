##############
#Criando fw01#
##############

resource "aws_network_interface" "instance-01_eth0" {
  subnet_id       = aws_subnet.subnet1.id
  private_ips     = ["10.10.1.10"]
  security_groups = [aws_security_group.security_group_transit_vpc.id]
  source_dest_check  = false 
  tags = {
    Name = "instance-01_eth0"
  }
}

resource "aws_network_interface" "instance-01_eth1" {
  subnet_id       = aws_subnet.subnet1.id
  private_ips     = ["10.10.1.11"]
  security_groups = [aws_security_group.security_group_transit_vpc.id]
  source_dest_check  = false 
  tags = {
    Name = "instance-01_eth1"
  }
}

resource "aws_eip" "instance01_eip1" {
  vpc = true
}

resource "aws_eip" "instance01_eip2" {
  vpc = true
}

resource "aws_eip_association" "instance01_eip_assoc1" {
  network_interface_id = aws_network_interface.instance-01_eth0.id
  allocation_id     = aws_eip.instance01_eip1.id
}

resource "aws_eip_association" "instance01_eip_assoc2" {
  network_interface_id = aws_network_interface.instance-01_eth1.id
  allocation_id     = aws_eip.instance01_eip2.id
}

resource "aws_instance" "instance-01" {
  ami           = var.instance_ami
  instance_type = var.instance_type

  key_name                    = "ssh-key-transit-vpc"

  availability_zone = var.availability_zone_a

  network_interface {
    device_index         = 0
    network_interface_id = aws_network_interface.instance-01_eth0.id
  }

  network_interface {
    device_index         = 1
    network_interface_id = aws_network_interface.instance-01_eth1.id
  }

  tags = {
    Name = "instance-transit-vpc-fw01"
  }
}

##############
#Criando fw02#
##############
resource "aws_network_interface" "instance-02_eth0" {
  subnet_id       = aws_subnet.subnet2.id
  private_ips     = ["10.10.2.10"]
  security_groups = [aws_security_group.security_group_transit_vpc.id]
  source_dest_check  = false 
  tags = {
    Name = "instance-02_eth0"
  }
}

resource "aws_network_interface" "instance-02_eth1" {
  subnet_id       = aws_subnet.subnet2.id
  private_ips     = ["10.10.2.11"]
  security_groups = [aws_security_group.security_group_transit_vpc.id]
  source_dest_check  = false 
  tags = {
    Name = "instance-02_eth1"
  }
}

resource "aws_eip" "instance02_eip1" {
  vpc = true
}

resource "aws_eip" "instance02_eip2" {
  vpc = true
}

resource "aws_eip_association" "instance02_eip_assoc1" {
  network_interface_id = aws_network_interface.instance-02_eth0.id
  allocation_id     = aws_eip.instance02_eip1.id
}

resource "aws_eip_association" "instance02_eip_assoc2" {
  network_interface_id = aws_network_interface.instance-02_eth1.id
  allocation_id     = aws_eip.instance02_eip2.id
}

resource "aws_instance" "instance-02" {
  ami           = var.instance_ami
  instance_type = var.instance_type

  key_name                    = "ssh-key-transit-vpc"

  availability_zone = var.availability_zone_b

  network_interface {
    device_index         = 0
    network_interface_id = aws_network_interface.instance-02_eth0.id
  }

  network_interface {
    device_index         = 1
    network_interface_id = aws_network_interface.instance-02_eth1.id
  }

  tags = {
    Name = "instance-transit-vpc-fw02"
  }
}

