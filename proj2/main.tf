provider "aws" {
  region = "eu-central-1"
}

resource "aws_instance" "example" {
  ami           = "ami-089b5384aac360007"
  instance_type = "t2.micro"
  subnet_id = "subnet-0243ef0d16f3086af"
  vpc_security_group_ids = ["sg-0bf109bd9ac2a042c"]
}

terraform {
  backend "s3" {
    bucket = "atlantis-poc-kn-om"
    key    = "proj1/"
    region = "eu-central-1"
  }
}
