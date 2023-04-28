variable "tags" {
    type        = map
    default = {
        Name = "toto"
    }   
}

variable "size" {
    type = number
    default = 20
}