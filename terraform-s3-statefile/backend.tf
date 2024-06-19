terraform {
  backend "s3" {
    bucket = "k8sdevopsxyz12345678"
    key = "terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "k8sdevopsxyz12345678"
    encrypt = true
  }
}