variable "project_name" {
  type        = string
  description = "Project name prefix"
}

variable "region" {
  type        = string
  description = "AWS region"
}

variable "tags" {
  type        = map(string)
  description = "Base tags applied to all resources"
  default     = {}
}

# VPC inputs
variable "vpc_cidr" {
  type        = string
  description = "VPC CIDR block"
}

variable "azs" {
  type        = list(string)
  description = "Availability zones"
}

variable "public_subnets" {
  type        = list(string)
  description = "Public subnet CIDRs"
}

variable "private_subnets" {
  type        = list(string)
  description = "Private subnet CIDRs"
}

# ECR inputs (multiple repos)
variable "ecr_repositories" {
  type        = list(string)
  description = "List of ECR repository names to create"
}

