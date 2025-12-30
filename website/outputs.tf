output "aws_s3_bucket_website_bucket_id" {
  description = "The ID of the S3 bucket for the website"
  value       = aws_s3_bucket.website_bucket.id
}