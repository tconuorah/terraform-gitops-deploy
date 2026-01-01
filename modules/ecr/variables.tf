variable "ecr_repositories" {
  type        = list(string)
  description = "List of ECR repository names"
}

variable "tags" {
  type        = map(string)
  description = "Tags"
  default     = {}
}

