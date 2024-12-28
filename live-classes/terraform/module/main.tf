module "demo-1" {
    source = "./demo"
    Name = "my-module-instance"
    instance_type = "t2.micro"
}

module "demo-2" {
    source = "./demo"
    Name = "my-module-instance-second"
    instance_type = "t3.micro"
}