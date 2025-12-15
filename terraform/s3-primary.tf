resource "aws_s3_bucket" "primary" {
  provider = aws.primary
  bucket   = "cobl-002-primary-asha1"

  versioning {
    enabled = true
  }
}
