variable "access_key" {
  description = "AWS access key"
  type        = string
  sensitive   = true
  ephemeral   = true
}

variable "secret_key" {
  description = "AWS sensitive secret key."
  type        = string
  sensitive   = true
  ephemeral   = true
}

required_providers {
  aws = {
    source  = "hashicorp/aws"
    version = "~> 6.27"
  }
}

provider "aws" "this" {
  config {
    region     = var.aws_region
    access_key = var.access_key
    secret_key = var.secret_key
  }
}
