resource "aws_ebs_volume" "ebs-dreamteam" {
  availability_zone = "us-east-1"
  size              = var.size
  tags = {
    Name = "my_ebs_volume"
  }
}