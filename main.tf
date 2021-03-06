provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "u15-aws-ec2" {
  instance_type = "t2.micro"
  ami = "ami-041d6256ed0f2061c" 
}

variable "instance_name" {
type = string 
default = "u15_Default"
}
