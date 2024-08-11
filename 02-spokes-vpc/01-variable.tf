variable "cidr_spoke_vpc1" {
  description = "CIDR block for the Spoke VPC1 "
  default     = "10.11.0.0/16"
}

variable "cidr_subnet1_spoke_vpc1" {
  description = "CIDR block for the subnet"
  default     = "10.11.1.0/24"
}

variable "cidr_subnet2_spoke_vpc1" {
  description = "CIDR block for the subnet"
  default     = "10.11.2.0/24"
}

variable "availability_zone_a" {
  description = "availability zone to create subnet"
  default     = "us-east-1a"
}

variable "availability_zone_b" {
  description = "availability zone to create subnet"
  default     = "us-east-1b"
}
