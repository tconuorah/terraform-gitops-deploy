module "vpc" {
  source = "../modules/vpc"

  name            = local.name
  vpc_cidr        = var.vpc_cidr
  azs             = var.azs
  public_subnets  = var.public_subnets
  private_subnets = var.private_subnets

  tags = local.tags
}

module "ecr" {
  source = "../modules/ecr"

  ecr_repositories = var.ecr_repositories
  tags             = local.tags
}

module "eks" {
  source = "../modules/eks"

  name               = local.name
  region             = var.region
  kubernetes_version = var.kubernetes_version

  vpc_id             = module.vpc.vpc_id
  private_subnet_ids = module.vpc.private_subnet_ids

  node_instance_types = var.node_instance_types
  min_size            = var.min_size
  max_size            = var.max_size
  desired_size        = var.desired_size

  tags = local.tags
}
