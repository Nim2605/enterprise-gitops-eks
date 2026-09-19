module "vpc" {
  source = "../../modules/vpc"

  project_name = var.project_name
  environment  = var.environment

  vpc_cidr = var.vpc_cidr

  availability_zones   = var.availability_zones
  public_subnet_cidrs  = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs

  enable_nat_gateway     = var.enable_nat_gateway
  one_nat_gateway_per_az = var.one_nat_gateway_per_az

  eks_cluster_name = var.eks_cluster_name
}


module "management_ec2" {
  source = "../../modules/management_ec2"

  project_name = var.project_name
  environment  = var.environment

  instance_name = "management-server"
  instance_type = "t3.micro"

  vpc_id    = module.vpc.vpc_id
  subnet_id = module.vpc.public_subnet_ids[0]

  allowed_ssh_cidr = var.allowed_ssh_cidr
  key_name         = var.key_name
  public_key_path  = var.public_key_path

  enable_public_ip = true
}