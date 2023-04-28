variable "instancetype" {
        description = "The instance type defined by main.tf files"
        type = string
}

variable "private_key_path" {
    description = "The path to the private key file used for SSH access."
}

variable "tags" {
    type        = map
    description = "A map of tags to apply to the resources created by the module."
    default = {
        name = "toto"
    }   
}

variable "key_name" {
    type = string
    default = "kp-dreamteam"
}