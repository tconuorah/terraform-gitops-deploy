terraform {
  backend "s3" {
    bucket         = "to-state-file"
    key            = "terraform.tfstate"
    region         = "us-east-2"
    dynamodb_table = "terraform-state-locks"
    encrypt        = true

    # This is how workspaces get separate state files in the same bucket
    workspace_key_prefix = "env"
  }
}
