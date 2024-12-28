#count -- for simple looping 

#for_each -- for complex loops

resource "null_resource" "test" {
    count = 10
}