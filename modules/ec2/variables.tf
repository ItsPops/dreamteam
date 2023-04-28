variable "instancetype" {
        type = string
}

variable "private_key_path" {
    default = "./key.pem"
}

variable "tags" {
    type        = map
    default = {
        name = "toto"
    }   
}

variable "key_name" {
    type = string
    default = "kp-dreamteam"
}