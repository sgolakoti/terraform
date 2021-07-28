module "sg" {
  source = "./SG"
}
module "ec2" {
  depends_on = [module.sg]
  source = "./EC2"
  SG_ID=module.sg.SG_ID

}
provider "aws" {
  region = "us-east-1"
}
output "privateip" {
  value = "Ec2 Privateip is - ${module.ec2.privateip}"
}