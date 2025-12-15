resource "aws_s3_bucket" "secondary" {
  provider = aws.secondary
  bucket   = "cobl-002-secondary-asha1"

  versioning {
    enabled = true
  }
}
