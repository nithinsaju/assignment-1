provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "u15-aws-ec2" {
  instance_type = "t2.micro"
  ami = "ami-041d6256ed0f2061c" 
  name = var.instance_name
}

variable "instance_name" {
type = string 
default = "Mr EC2_VM"
}
