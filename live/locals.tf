locals {
  env  = terraform.workspace
  name = "${var.project_name}-${local.env}"

  tags = merge(var.tags, {
    Project     = var.project_name
    Environment = local.env
  })
}
