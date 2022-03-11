resource "random_id" "random_id_prefix" {
  byte_length = 2
}

locals {
  production_availability_zones = ["${var.region}a", "${var.region}b", "${var.region}c"]
}

module "Networking" {
  source               = "./modules/Networking"
  region               = var.region
  environment          = var.environment
  vpc_cidr             = var.vpc_cidr
  public_subnets_cidr  = var.public_subnets_cidr
  private_subnets_cidr = var.private_subnets_cidr
  availability_zones   = local.production_availability_zones
}

module "ssh-key" {
  source      = "./modules/ssh-key"
  environment = var.environment
}

module "Instances" {
  source = "./modules/Instances"
  environment = var.environment
    ami                     = var.ami
    instance_type           = var.instance_type
    key_name                = module.ssh-key.key_pair_id
    private_subnet_id       = [module.Networking.private_subnets_id[0]]
    public_subnet_id        = [module.Networking.public_subnets_id[0]]
    vpc_security_group_ids  = [module.Networking.security_groups_ids[0]]
}