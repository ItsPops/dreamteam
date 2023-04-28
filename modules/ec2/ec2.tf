resource "aws_instance" "dreamteam" {
  ami           = "ami-03c7d01cf4dedc891" # Image Amazon Linux la plus à jour
  instance_type = var.instancetype
  tags = var.tags
  key_name = var.key_name


 connection {
            type        = "ssh"
            user        = "ec2-user"
            private_key = file(var.private_key_path)
            host        = aws_instance.dreamteam.public_ip
        }

provisioner "local-exec" {
  command = <<EOF
    rm infos.txt
    echo "IP: ${aws_instance.dreamteam.public_ip}" >> infos.txt &&
    echo "Zone: ${aws_instance.dreamteam.availability_zone}" >> infos.txt &&
    echo "ID: ${aws_instance.dreamteam.id}" >> infos.txt
  EOF
}

provisioner "remote-exec" {
    inline = [
      #"sudo yum update -y",
      "sudo amazon-linux-extras install -y nginx1.12",
      "sudo systemctl start nginx"
    ]
  }

  # Définition du groupe de sécurité pour ouvrir les ports 80 et 443
  vpc_security_group_ids = [aws_security_group.sg-dreamteam.id]

  # Définition de l'adresse IP publique
  associate_public_ip_address = true
}
