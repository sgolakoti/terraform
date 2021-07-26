variable "var1" {
  default="Hello World"
}
output "varout" {
  value ="My first test is ${var.var1}"
}

variable "var2" {}

output "out2" {
  value = var.var2
}

variable "varlist" {
  default=["1stval","2ndval","3rdval"]
}

variable "varmap" {
  default = {
    aws = "7.30 AM"
    office = "9.00 AM"
    practice = "6.00 PM"
  }
}
output "out3" {
  value = var.varlist
}
output "out4" {
  value = "My list is 1. ${var.varlist[0]} 2. ${var.varlist[1]} 3. ${var.varlist[2]}"
}
output "out5" {
  value = "My list is 1. ${var.varmap["aws"]} 2. ${var.varmap["office"]} 3. ${var.varmap["practice"]}"
}