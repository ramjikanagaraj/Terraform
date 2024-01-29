variable "ami" {
    type = string
    description = "Ubuntu"
}
variable "instance_type" {
    type = string
    description = "Added t2micro"
}
variable "instance_name" {
    type =  string
    description = "Named EC2" 
}
variable "CIDR" {
  type = string
  description = "CIDR value"
}