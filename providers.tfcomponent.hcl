required_providers {
  aws = {
    source  = "hashicorp/aws"
    version = "~> 6.27"
  }
}

provider "aws" "this" {
  config {
    region = var.aws_region
  }
}
