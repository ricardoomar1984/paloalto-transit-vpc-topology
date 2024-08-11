variable "aws_region" {
  type        = string
  description = ""
  default     = "us-east-1"
}

variable "aws_profile" {
  type        = string
  description = ""
  default     = "meuprofile"
}

variable "cidr_vpc_transit" {
  description = "CIDR block for the VPC"
  default     = "10.10.0.0/16"
}

variable "cidr_subnet1_vpc_transit" {
  description = "CIDR block for the subnet"
  default     = "10.10.1.0/24"
}

variable "cidr_subnet2_vpc_transit" {
  description = "CIDR block for the subnet"
  default     = "10.10.2.0/24"
}

variable "availability_zone_a" {
  description = "availability zone to create subnet"
  default     = "us-east-1a"
}

variable "availability_zone_b" {
  description = "availability zone to create subnet"
  default     = "us-east-1b"
}

variable "nome_tag" {
  description = "ROMAR_TRANSIT_VPC"
  default     = "ROMAR_TRANSIT_VPC"
}
