variable "instancetype" {
    type = string
    default = "t2.micro"
}


variable "aws_access_key" {
    type = string
    default = ""
}

variable "aws_secret_key" {
    type = string
    default = ""
}

variable "private_key_path" {
    type = string
    default = "toto"
}

variable "ec2_tags" {
    type = map
    default = {
        Name = "ec2-toto"
    }
}

variable "aws_region" {
    type = string
    default = "us-east-1"
}

variable "key_name" {
    type = string
    default = "kp-dreamteam"
}



variable "ebs_size" {
    type = number
    default = 20
}

variable "ebs_tags" {
    type = string
    default = "ebs-tags"
}