variable "region" {
  type    = string
  default = "us-east-2"
}

variable "state_bucket_name" {
  type = string
  default = "to-state-file"
}

variable "lock_table_name" {
  type    = string
  default = "terraform-state-locks"
}

variable "tags" {
  type    = map(string)
  default = {}
}
