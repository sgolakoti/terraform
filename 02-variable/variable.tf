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