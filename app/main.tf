module "ec2" {
  source = "../modules/ec2"
  instancetype = var.instancetype
  private_key_path = var.private_key_path
  key_name = var.key_name
  tags = {
    Name = var.ec2_tags
}
}

module "ebs" {
  source = "../modules/ebs"
  size = var.ebs_size
  tags = {
    Name = var.ebs_tags
  }
}

module "ip" {
    source = "../modules/ip"
}


#Configuration zone et paire de clés
provider "aws" {
  region     = var.aws_region
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}