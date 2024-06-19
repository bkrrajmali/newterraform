resource "aws_dynamodb_table" "terraform_locks" {
  name = "k8sdevopsxyz12345678"
  billing_mode = "PAY_PER_REQUEST"
  hash_key = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}

output "s3_bucket_id" {
  value = aws_s3_bucket.terraform-state.id
}

output "aws_dynamodb_table" {
  value = aws_dynamodb_table.terraform_locks.name
}

variable "region" {
  description = "AWS Region"
  default = "us-east-1"
}