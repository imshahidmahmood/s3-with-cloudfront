# outputs.tf
output "S3_REGION" {
  value = var.aws_region
}

output "S3_ACCESS_KEY_ID" {
  value = aws_iam_access_key.user_access_keys.id
}

output "S3_SECRET_ACCESS_KEY" {
  value = aws_iam_access_key.user_access_keys.secret
  sensitive = true
}

output "S3_BUCKET_NAME" {
  value = aws_s3_bucket.s3_bucket.bucket
}

output "S3_CDN_NAME" {
  value       = aws_cloudfront_distribution.cf_distribution.domain_name
  description = "The CloudFront CDN URL"
}
