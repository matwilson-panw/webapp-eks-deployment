resource "aws_s3_bucket" "documents" {
  bucket = var.s3_bucket_name
}

resource "aws_s3_bucket" "documents_log_bucket" {
  bucket = "documents-log-bucket"
}

resource "aws_s3_bucket_logging" "documents" {
  bucket = aws_s3_bucket.documents.id

  target_bucket = aws_s3_bucket.documents_log_bucket.id
  target_prefix = "log/"
}


resource "aws_s3_bucket_public_access_block" "block_public" {
  bucket                  = aws_s3_bucket.documents.id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}