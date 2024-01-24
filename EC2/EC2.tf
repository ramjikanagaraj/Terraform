resource "aws_instance" "name" {
  ami = var.ami
  instance_type = var.instance_type
  
  tags = {
    Named = var.Instance_name
  }
}