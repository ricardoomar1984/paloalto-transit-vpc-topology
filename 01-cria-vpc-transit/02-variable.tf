
variable "instance_ami" {
  description = "AMI for aws EC2 instance"
  default     = "ami-0ab4d1e9cf9a1215a"
}

variable "instance_type" {
  description = "type for aws EC2 instance"
  default     = "t2.micro"
}

variable "ssh-key-transit-vpc" {
  description = "Chave ja criada previamente"
  default     = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDr3KlzqyneSv0grX9faVNsPeQbbDdKNB2LpNjEZ/cj7JECAQDjAyJDZvqzKtrK4i/l0dWf2ikhfhOGk8MGxx8gQEiI4GyzS49H82DLrnAZpHi0zvABUiNKbfqNMFWYws/7zB2Elt6FOPGtN32stMGr2xpM8pamBkEEsNwdIRTEU9EgsiMdBXcSDRVtHYLtzvoUwn5rTzoR4it1YANjZzp4UGz4v/aaUE0w8K9bs2QUS/9Awh1UQxFT9IBd/011Y6G0ADb13vdJqAgPSAfZUWTFebRNfs1UEgw/DDbEJAKA6THkFVAygFhDkEXwDHNtlfGl9yzp5VM8uXp2csUiRtWrBbVWH/3s4KjXPoQZLlkORJca8rCEJ3hCgrDgiAe02i+a53X5l0T5FMjb6lTgj9qELAj9KZb0jdWFoqwAwm5SBsC5uGTFtgpx4U3+iRfRm2yA9wKy26jkUMmY+iGBrL9nA10z0xRw/7b1rVhKAknnbb1q2YKkRfqBNzw+RPZtR3k="
}
