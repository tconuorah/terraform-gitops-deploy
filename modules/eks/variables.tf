variable "name" {
  type        = string
  description = "EKS cluster name"
}

variable "region" {
  type        = string
  description = "AWS region"
}

variable "kubernetes_version" {
  type        = string
  description = "Kubernetes version"
}

variable "vpc_id" {
  type        = string
  description = "VPC ID"
}

variable "private_subnet_ids" {
  type        = list(string)
  description = "Private subnet IDs for EKS"
}

variable "node_instance_types" {
  type        = list(string)
  description = "Node group instance types"
}

variable "min_size" {
  type        = number
  description = "Min nodes"
}

variable "max_size" {
  type        = number
  description = "Max nodes"
}

variable "desired_size" {
  type        = number
  description = "Desired nodes"
}

variable "tags" {
  type        = map(string)
  description = "Tags"
  default     = {}
}
