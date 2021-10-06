provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "my-ec2" {
  instance_type = "t2.micro"
  ami = "ami-087c17d1fe0178315"
  subnet_id = "subnet-06f06aa686014295b"
}
