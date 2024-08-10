provider "aws" {
  region = "eu-west-1"
}

resource "aws_instance" "web_server" {
  ami           = "ami-0c38b837cd80f13bb"
  instance_type = "t2.micro"

  tags = {
    Name = "DevOpsProjectJTipi"
  }

  key_name = "Key pair"  
  
  
}