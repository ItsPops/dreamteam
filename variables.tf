variable "instancetype" {
    type = string
}

variable "aws_region" {
    type = string
}


variable "aws_access_key" {
    type = string
}

variable "aws_secret_key" {
    type = string
}

variable "key_name" {
    type = string
    default = "kp-dreamteam"
}

variable "private_key_path" {
    type = string
    default = "toto"
}
