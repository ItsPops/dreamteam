module "ec2" {
    source = "./modules/ec2"
    instancetype = var.instancetype
    private_key_path = var.private_key_path
    key_name = var.key_name
    tags = {
      Name = "ec2-prod-dreamteam"
  }
}

module "sg" {
    source =".module/sg"
}


provider "aws" {
  region     = var.aws_region
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key 
  }2" {
    source = "../modules/ec2"
    instancetype = var.instancetype
    private_key_path = var.private_key_path
    key_name = var.key_name
    tags = {
      Name = "ec2-prod-FrancoisBRILLE"
  }
}
provider "aws" {
  region     = var.aws_region
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}