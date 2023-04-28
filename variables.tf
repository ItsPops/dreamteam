variable "instancetype" {
    type = string
    default = "t2.micro"
}

variable "aws_region" {
    type = string
    default = "us-east-1"
}


variable "aws_access_key" {
    type = string
    default = ""
}

variable "aws_secret_key" {
    type = string
    default = ""
}

variable "key_name" {
    type = string
    default = "kp-dreamteam"
}

variable "private_key_path" {
    type = string
    default = "toto"
}
