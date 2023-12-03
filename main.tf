provider "aws" {
  region = "us-east-1"

}

resource "aws_instance" "first_ec2" {
  ami             = "ami-0230bd60aa48260c6"
  instance_type   = "t2.micro"
  subnet_id       = "subnet-04329ac29def7eb6e"
  security_groups = ["sg-0cb25b0dab95fe26b"]
  key_name        = "practice"

  tags = {
    Name = "sample1"
  }
}

resource "aws_instance" "second_ec2" {
  ami             = "ami-0230bd60aa48260c6"
  instance_type   = "t2.micro"
  subnet_id       = "subnet-03eb9926d4cbb9223"
  security_groups = ["sg-0cb25b0dab95fe26b"]
  key_name        = "practice"

  tags = {
    Name = "sample2"
  }
}