variable "cidr_spoke_vpc2" {
  description = "CIDR block for the Spoke VPC1 "
  default     = "10.12.0.0/16"
}

variable "cidr_subnet1_spoke_vpc2" {
  description = "CIDR block for the subnet"
  default     = "10.12.1.0/24"
}

variable "cidr_subnet2_spoke_vpc2" {
  description = "CIDR block for the subnet"
  default     = "10.12.2.0/24"
}

