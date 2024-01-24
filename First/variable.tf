//region

variable "region" {
}

// ami

variable "ami" {
}

// Instance Type

variable "instance_type" {
}
// public Instance Name

variable "first_ins" {
}

// private Instance Name

variable "secound_ins" {
}

// VPC cidr_block

variable "cidr_block" {
}
variable "vpc_name" {
}

// subnet public 

variable "pub_cidr_block" {
}
variable "pub_availability" {
}
variable "pub_sub" {
}
variable "pub_sub_name" {
}

// subnet private 

variable "pri_cidr_block" {
}
variable "pri_availability" {
}
variable "pri_sub" {
}
variable "pri_sub_name" {
}

// Internet gateway

variable "Intgat_name" {
}
variable "EIP_Name" {
}

// NAT 

variable "NAT_Name" {
}

// Table route

variable "pub_route" {
}
variable "Pub_rou_name" {
}

variable "pri_route" {
}
variable "Pri_rou_name" {
}

// security group

variable "security_groups_name" {
}