resource "aws_s3_bucket" "documents" {
  bucket = var.s3_bucket_name
}
resource "aws_s3_bucket_public_access_block" "block_public" {
  bucket                  = aws_s3_bucket.documents.id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}