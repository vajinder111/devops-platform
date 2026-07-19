module "vpc" {
  source = "../../modules/vpc"

  vpc_cidr    = var.vpc_cidr
  vpc_name    = var.vpc_name
  environment = var.environment

  availability_zones = var.availability_zones
  public_subnets     = var.public_subnets
  private_subnets    = var.private_subnets
}

module "security_group" {
  source = "../../modules/security-group"

  vpc_id      = module.vpc.vpc_id
  environment = var.environment
  allowed_ip  = var.allowed_ip
}

module "iam" {
  source = "../../modules/iam"

  environment = var.environment
}

module "ec2" {

  source = "../../modules/ec2"

  environment = var.environment

  ami_id        = var.ami_id
  instance_type = var.instance_type

  subnet_id = module.vpc.public_subnet_ids[0]

  security_group_id = module.security_group.security_group_id

  instance_profile_name = module.iam.instance_profile_name

  key_name = var.key_name
}