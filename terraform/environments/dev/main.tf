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

module "eks" {
  source = "../../modules/eks"

  project_name = var.project_name
  environment  = var.environment

  cluster_name    = var.eks_cluster_name
  cluster_version = "1.34"

  vpc_id             = module.vpc.vpc_id
  private_subnet_ids = module.vpc.private_subnet_ids

  management_role_arn = module.management_ec2.iam_role_arn

  node_instance_types = ["t3.medium"]

  node_desired_size = 2
  node_min_size     = 1
  node_max_size     = 3
}

module "ecr" {
  source = "../../modules/ecr"

  project_name = var.project_name
  environment  = var.environment

  repository_names = [
    "frontend",
    "backend"
  ]
}