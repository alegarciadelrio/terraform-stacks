# Bucket for the website
resource "aws_s3_bucket" "website_bucket" {
  bucket              = var.bucket_name
  force_destroy       = false
  object_lock_enabled = false
  region              = var.aws_region
  
  tags = {
    Name        = "StaticWebsite"
    Environment = var.env
  }
}