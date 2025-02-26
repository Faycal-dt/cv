resource "aws_s3_bucket" "cv_bucket" {
  bucket = var.bucket_name

}

resource "aws_s3_bucket_policy" "public_read_policy" {
  bucket = aws_s3_bucket.cv_bucket.id

  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect    = "Allow",
        Principal = "*",            # Accès ouvert à tout le monde
        Action    = "s3:GetObject", # Action de lecture
        Resource  = "${aws_s3_bucket.cv_bucket.arn}/*"
      }
    ]
  })
}

resource "aws_s3_bucket_public_access_block" "cv_bucket" {
  bucket = aws_s3_bucket.cv_bucket.id

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}

resource "aws_s3_object" "cv_pdf" {
  bucket       = aws_s3_bucket.cv_bucket.id
  key          = var.bucket_key          #"cv_nassim_ais.pdf"  
  source       = var.bucket_source       #"C:/Users/GamerX/Desktop/CV/CV Nassim AIS.pdf"  
  content_type = var.bucket_content_type # "application/pdf"
  acl          = var.bucket_acl          # "public-read"
}

output "cv_url" {
  value = "https://${aws_s3_bucket.cv_bucket.bucket}.s3.${provider.region}.amazonaws.com/cv_nassim_ais.pdf"
}
