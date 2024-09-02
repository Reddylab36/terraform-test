provider "aws" {
    region = "us-east-1"  
}

resource "aws_instance" "foo" {
  ami           = "ami-0a0e5d9c7acc336f1" # us-eat-1
  instance_type = "t2.micro"  
}
