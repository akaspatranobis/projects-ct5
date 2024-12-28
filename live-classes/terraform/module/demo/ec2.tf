resource "aws_instance" "ec2demo" {
  ami           = "ami-0533f2ba8a1995cf9"
  instance_type = var.instance_type

  tags = {
    Name = var.Name
  }
}

variable "instance_type" {}
variable "Name" {}