variable "tags" {
    type        = map
    default = {
        name = "toto"
    }   
}

variable "size" {
    type = number
    default = 20
}