resource "aws_s3_bucket" "my_bucket" {
  bucket = "dsiuisjdksjnkheufhdskjnc"
  acl    = "private"

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {

        sse_algorithm     = "aws:kms"
      }
    }
  }

  lifecycle_rule {
    id      = "log-files"
    enabled = true

    prefix = "logs/"

    expiration {
      days = 90
    }
  }
}
resource "aws_iam_policy" "s3_bucket_policy" {
  name        = "s3_bucket_policy"
  description = "IAM policy for S3 bucket"

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Action = [
          "s3:GetObject",
          "s3:PutObject",
        ],
        Resource = "${aws_s3_bucket.my_bucket.arn}/*"
      },

    ]
  })
}

