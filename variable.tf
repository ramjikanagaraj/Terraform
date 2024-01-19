//region

variable "region" {
  type = string
  description = "give region a name"
}

// ami

variable "ami" {
    default = "ami-0a0f1259dd1c90938"
}

// Instance Type

variable "instance_type" {
  default = "t2.micro"
}
// public Instance Name

variable "first_ins" {
  default = "public"
}

// private Instance Name

variable "secound_ins" {
  default = "private"
}

// VPC cidr_block

variable "cidr_block" {
    default = "10.0.0.0/16"
}
variable "vpc_name" {
  default = "demo_vpc"
}

// subnet public 

variable "pub_cidr_block" {
  default = "10.0.1.0/24"
}
variable "pub_availability" {
  default = "ap-south-1a"
}
variable "pub_sub" {
  default = true
}
variable "pub_sub_name" {
  default = "pub_sub"
}

// subnet private 

variable "pri_cidr_block" {
   default = "10.0.2.0/24"
}
variable "pri_availability" {
  default = "ap-south-1b"
}
variable "pri_sub" {
  default = false
}
variable "pri_sub_name" {
  default = "pri_sub"
}

// Internet gateway

variable "Intgat_name" {
  default = "Intgate"
}
variable "EIP_Name" {
  default = "Demo EIP"
}

// NAT 

variable "NAT_Name" {
  default = "Demo NAT"
}

// Table route

variable "pub_route" {
  default = "0.0.0.0/0"
}
variable "Pub_rou_name" {
  default = "pub_route"
}

variable "pri_route" {
  default = "0.0.0.0/0" 
}
variable "Pri_rou_name" {
  default = "pri_route"
}

// security group

variable "security_groups_name" {
  type        = string
  description = "Give the security group"
  // default = "Demo_VPC_SGs"
}