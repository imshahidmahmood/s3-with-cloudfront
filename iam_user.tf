# iam.tf
resource "aws_iam_user" "s3_user" {
  name = "${aws_s3_bucket.s3_bucket.bucket}-user"
}

resource "aws_iam_policy" "s3_access_policy" {
  name        = "${aws_s3_bucket.s3_bucket.bucket}-access-policy"
  description = "Policy to allow access to S3 bucket"
  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Action = ["s3:*"],
        Effect = "Allow",
        Resource = [
          aws_s3_bucket.s3_bucket.arn,
          "${aws_s3_bucket.s3_bucket.arn}/*"
        ]
      }
    ]
  })
}

resource "aws_iam_user_policy_attachment" "user_policy_attachment" {
  user       = aws_iam_user.s3_user.name
  policy_arn = aws_iam_policy.s3_access_policy.arn
}

resource "aws_iam_access_key" "user_access_keys" {
  user = aws_iam_user.s3_user.name
}
