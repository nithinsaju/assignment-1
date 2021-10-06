provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "my-ec2" {
  #name = ""
  instance_type = "t2.micro"
  ami = "ami-087c17d1fe0178315"
  #vpc_id  = "vpc-01d2999949224872a"
  subnet_id = "subnet-06f06aa686014295b"
}
