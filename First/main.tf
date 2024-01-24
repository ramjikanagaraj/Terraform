// Instance EC2

resource "aws_instance" "public" {
  ami = var.ami
  instance_type = var.instance_type
  subnet_id = aws_subnet.public.id
  security_groups = [ aws_security_group.demo_vpc_SG.id ]

  tags = {
    Name = var.first_ins
  }
}

resource "aws_instance" "private" {
  ami = var.ami
  instance_type = var.instance_type
  subnet_id = aws_subnet.private.id
  security_groups = [ aws_security_group.demo_vpc_SG.id ]

  tags = {
    Name = var.secound_ins
  }
}

// VPC

resource "aws_vpc" "demo" {
  cidr_block = var.cidr_block

  tags = {
    Name = var.vpc_name
  }
}

// public subnet

resource "aws_subnet" "public" {
  vpc_id = aws_vpc.demo.id
  cidr_block = var.pub_cidr_block
  availability_zone = var.pub_availability
  map_public_ip_on_launch = var.pub_sub

  tags = {
    Name = var.pub_sub_name
  }
}

// private subnet

resource "aws_subnet" "private" {
  vpc_id = aws_vpc.demo.id
  cidr_block = var.pri_cidr_block
  availability_zone = var.pri_availability
  map_public_ip_on_launch = var.pri_sub

  tags = {
    Name = var.pri_sub_name
  }
}

// Internetgateway

resource "aws_internet_gateway" "Intgateway" {
  vpc_id = aws_vpc.demo.id

  tags = {
    Name = var.Intgat_name
  }
}

// public Route table

resource "aws_route_table" "public" {
  vpc_id = aws_vpc.demo.id
  route {
    cidr_block = var.pub_route
    gateway_id = aws_internet_gateway.Intgateway.id
  }

  tags = {
    Name = var.Pub_rou_name
  }
}

// association

resource "aws_route_table_association" "public" {
  subnet_id = aws_subnet.public.id
  route_table_id = aws_route_table.public.id
}

// Eip for NAT

resource "aws_eip" "NAT" {
  instance = null
  tags = {
    Name = var.EIP_Name
  }
}

// NAT gateway

resource "aws_nat_gateway" "name" {
  allocation_id = aws_eip.NAT.id
  subnet_id = aws_subnet.public.id
  tags = {
    Name = var.NAT_Name
  }
}

// private Route table

resource "aws_route_table" "private" {
  vpc_id = aws_vpc.demo.id

  route {
    cidr_block = var.pri_route
    nat_gateway_id = aws_nat_gateway.name.id
  }

  tags = {
    Name = var.Pri_rou_name
  }
}

// association

resource "aws_route_table_association" "private" {
  subnet_id = aws_subnet.private.id
  route_table_id = aws_route_table.private.id
}

// security group

resource "aws_security_group" "demo_vpc_SG" {
  vpc_id      = aws_vpc.demo.id

  ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = var.security_groups_name
  }
}