provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "u15-aws-ec2" {
  instance_type = "t2.micro"
  ami = "ami-041d6256ed0f2061c" 

  tags = {
    Name = var.instance_name
  }
}
