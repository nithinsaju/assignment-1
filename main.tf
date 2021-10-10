provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "my-ec2" {
  instance_type = "t2.micro"
  ami = "ami-041d6256ed0f2061c"
}
