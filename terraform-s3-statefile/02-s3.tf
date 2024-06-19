resource "aws_s3_bucket" "terraform-state" {
  bucket = "k8sdevopsxyz12345678"
  tags = {
    Environment = "Terraform"
    Name ="k8sdevopsxyz12345678"
  }
}

