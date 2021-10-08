provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "my-ec2" {
  name = ${param.Name}
  instance_type = "t2.micro"
  ami = "ami-041d6256ed0f2061c"
}
