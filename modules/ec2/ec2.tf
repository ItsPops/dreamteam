resource "aws_instance" "ec2-dreamteam" {
  ami           = data.aws_ami.app_ami.id # Image Amazon Linux la plus à jour
  instance_type = var.instancetype
  tags = var.tags
  key_name = var.key_name


 connection {
            type        = "ssh"
            user        = "ec2-user"
            private_key = file(var.private_key_path)
            host        = aws_instance.ec2-dreamteam.public_ip
        }

provisioner "local-exec" {
  command = <<EOF
    rm ip_ec2.txt
    echo "IP: ${aws_instance.ec2-dreamteam.public_ip}" >> ip_ec2.txt &&
    echo "Zone: ${aws_instance.ec2-dreamteam.availability_zone}" >> ip_ec2.txt &&
    echo "ID: ${aws_instance.ec2-dreamteam.id}" >> ip_ec2.txt
EOF
}

provisioner "remote-exec" {
    inline = [
      "sudo apt update",
      "sudo apt install nginx",
      "sudo systemctl start nginx"
    ]
  }

  # Définition du groupe de sécurité pour ouvrir les ports 80 et 443
  vpc_security_group_ids = [aws_security_group.sg-dreamteam.id]

  # Définition de l'adresse IP publique
  associate_public_ip_address = true
}

resource "aws_security_group" "sg-dreamteam" {
  name_prefix = "DT-sg-"
  description = "Security group for instances created by dreamteam"

  # Autoriser le trafic entrant sur les ports 80 et 443
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  
  ingress {
      from_port   = 80
      to_port     = 80
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }  
  
  egress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
