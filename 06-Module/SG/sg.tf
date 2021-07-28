resource "aws_security_group" "allow-ssh" {
  name = "allow_ssh"
  description = " allow ssh"
  ingress {
    from_port = 22
    protocol = "tcp"
    to_port = 22
    cidr_blocks = [
      "0.0.0.0/0"]
  }
  egress {
    from_port = 0
    protocol = "tcp"
    to_port = 0
    cidr_blocks = [
      "0.0.0.0/0"]
  }
  tags = {
    name = "allow ssh"
  }
}
output "SG_ID" {
  value = aws_security_group.allow-ssh.id
}