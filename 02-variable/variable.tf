variable "var1" {
  default="Hello World"
}
output "varout" {
  value ="My first test is ${var1}"
}