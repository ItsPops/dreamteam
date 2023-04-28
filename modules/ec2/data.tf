data "aws_ami" "app_ami" {
    most_recent = true
    owners = ["099720109477"]

    filter {
        name = "name"
        values = ["ubuntu-bionic*"]
    }
    filter {
        name = "architecture"
        values = ["x86_64"]
    }
}