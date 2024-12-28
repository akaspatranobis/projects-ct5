#string, bool, list , map
# var.variablename -- > referencing a variable


variable "x" {
   default = 100
}



variable "y_list" {
   default = ["abc","cad",7]
}

variable "z_map" {
   default = {
    x = 10
    y = 20
   }
}

# output block ---> helps us to print information in terraform 

output "x" {
    value = var.x
}

output "y" {
    value = var.y_list
} 

output "y_1" {
    value = var.y_list[1]
} 

output "z_x" {
    value = var.z_map["x"]
}