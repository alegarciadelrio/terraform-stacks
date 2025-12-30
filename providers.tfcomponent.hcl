required_providers {
  aws = {
    source  = "hashicorp/aws"
    version = "~> 6.27"
  }
}

provider "aws" "this" {
  config {
    region = var.aws_region

    assume_role_with_web_identity {
      role_arn           = "arn:aws:iam::906310767457:user/managment"
    }
  }
}
