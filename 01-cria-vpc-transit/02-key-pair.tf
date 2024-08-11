resource "aws_key_pair" "ssh-key-trasit-vpc" {
  key_name   = "ssh-key-transit-vpc"
  public_key = var.ssh-key-transit-vpc
}