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


