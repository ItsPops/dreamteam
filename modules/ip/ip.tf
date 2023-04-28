resource "aws_eip" "ip_elastique" {
  instance = var.instance_id
  vpc      = true
}

resource "aws_eip_association" "IP" {
instance_id = var.instance_id
allocation_id = aws_eip.ip_elastique.id
}

output "ip_address" {
  value = aws_eip.ip_elastique.public_ip
}
