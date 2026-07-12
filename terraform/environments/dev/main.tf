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