component "website" {
  source = "website"
  
  inputs = {
    aws_region  = var.aws_region
    bucket_name = var.bucket_name
    env         = var.env
  }

  providers = {
    aws = provider.aws.this
  }
}