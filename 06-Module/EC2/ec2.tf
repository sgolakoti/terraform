resource "aws_instance" "sample" {
  ami = "ami-074df373d6bafa625"
  instance_type = "t2.micro"
  tags = {
    name="sample"
  }
  vpc_security_group_ids = [var.SG_ID]
}
variable "SG_ID" {}

output "privateip" {
  value = "Ec2 Privateip is - ${aws_instance.sample.private_ip}"
}