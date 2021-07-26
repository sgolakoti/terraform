resource "aws_instance" "sample" {
  ami = "ami-074df373d6bafa625"
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.allow-ssh.id]
  tags = {
    name = "sample"
  }

}


resource "aws_security_group" "allow-ssh" {
  name            = "allow ssh"
  description     = " allow ssh"
  ingress {
    from_port = 22
    protocol = "tcp"
    to_port = 22
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port = 0
    protocol = "tcp"
    to_port = 0
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    name = "allow ssh"
  }
}
output "sec" {
  value = aws_security_group.allow-ssh
}
output "ec2properties" {
  value = aws_instance.sample
}
provider "aws" {
  region = "us-east-1"
}