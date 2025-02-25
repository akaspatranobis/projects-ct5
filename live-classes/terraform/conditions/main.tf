resource "aws_instance" "test" {
    count = 2
    ami = "ami-0533f2ba8a1995cf9"
    instance_type = var.instance_type == "t2*" ? "t3.micro" :  var.instance_type
    tags = {
      Name = "Server - ${count.index}"
  }
}

variable "instance_type" {}

variable "create_instance" {}

# ? :