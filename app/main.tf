module "ec2" {
  source = "../modules/ec2"
  instancetype = var.instancetype
  private_key_path = var.private_key_path
  key_name = var.key_name
  tags = var.ec2_tags
}

module "sg" {
  source = "../modules/sg"
}

module "ip" {
  source      = "../modules/ip"
  instance_id = module.ec2.instance_id
}
provider "aws" {
    region     = var.aws_region
    access_key = var.aws_access_key
    secret_key = var.aws_secret_key
}
