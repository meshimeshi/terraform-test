provider "aws" {
  access_key = "XXX"
  secret_key = "YYY"
  region     = "ap-northeast-1"
}

resource "aws_instance" "example" {
  ami           = "ami-0ab0bbbd329f565e6"
  instance_type = "t2.micro"
}