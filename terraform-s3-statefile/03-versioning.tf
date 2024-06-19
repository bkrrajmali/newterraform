resource "aws_s3_bucket_versioning" "terraform_state" {
  bucket = aws_s3_bucket.terraform-state.id
  versioning_configuration {
    status = "Enabled"
  }
}