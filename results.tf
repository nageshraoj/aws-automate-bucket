output "website_name" {
  description = "Website url"
  value       = aws_s3_bucket.demobucket.website_endpoint
}