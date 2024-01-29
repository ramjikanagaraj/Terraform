variable "ami" {
  type        = string
  description = "Ubuntu"
}
variable "instance_type" {
  type        = string
  description = "Added t2micro"
}
variable "instance_name" {
  type        = string
  description = "Named EC2"
}
variable "CIDR" {
  type        = string
  description = "CIDR value"
}

variable "filename" {
  type        = string
  description = "Give the file name"
}

# variable "content" {
#   description = "File content"
# }

variable "prefix" {
  type        = string
  description = "file content prefix"
}

variable "separator" {
  type        = string
  description = "file content separator"
}

variable "length" {
  type        = number
  description = "file length"
}
