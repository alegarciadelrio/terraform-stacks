store "varset" "aws_default_root" {
  name     = "aws_default_root"
  category = "env"
}

deployment "dev" {
  inputs = {
    access_key    = store.varset.aws_default_root.AWS_ACCESS_KEY_ID
    secret_key    = store.varset.aws_default_root.AWS_SECRET_ACCESS_KEY
    aws_region     = "us-east-1"
    aws_account_id = "906310767457"
    env            = "dev"
    bucket_name    = "dev-delrioworks.com"
  }
}

deployment "prod" {
  inputs = {
    access_key    = store.varset.aws_default_root.AWS_ACCESS_KEY_ID
    secret_key    = store.varset.aws_default_root.AWS_SECRET_ACCESS_KEY
    aws_region     = "us-east-1"
    aws_account_id = "906310767457"
    env            = "prod"
    bucket_name    = "prod-delrioworks.com"
  }
}