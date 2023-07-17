resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-bucket"
  # This code is vulnerable to a bucket policy bypass attack.
  # The policy allows anyone to read the bucket contents, even if they do not have an AWS account.
  policy = <<EOF
  {
    "Version": "2012-10-17",
    "Statement": [
      {
        "Sid": "AllowAll",
        "Effect": "Allow",
        "Principal": "*",
        "Action": "s3:GetObject",
        "Resource": "arn:aws:s3:::my-bucket/*"
      }
    ]
  }
  EOF
}
