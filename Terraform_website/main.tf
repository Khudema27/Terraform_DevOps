resource "random_id" "bucket_id" {
  byte_length = 4
}

resource "aws_s3_bucket" "website_bucket" {
  bucket = "khudema-terraform-website-${random_id.bucket_id.hex}"
}

resource "aws_s3_bucket_website_configuration" "website_config" {
  bucket = aws_s3_bucket.website_bucket.id

  index_document {
    suffix = "index.html"
  }
}

resource "aws_s3_bucket_public_access_block" "public_access" {
  bucket = aws_s3_bucket.website_bucket.id

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}

resource "aws_s3_bucket_policy" "public_policy" {
  bucket = aws_s3_bucket.website_bucket.id

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect    = "Allow"
        Principal = "*"
        Action    = "s3:GetObject"
        Resource  = "${aws_s3_bucket.website_bucket.arn}/*"
      }
    ]
  })
}

resource "aws_s3_object" "website_index" {
  bucket       = aws_s3_bucket.website_bucket.id
  key          = "index.html"
  content      = "<h1>Hello, My First Terraform Website!</h1>"
  content_type = "text/html"
}
