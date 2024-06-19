resource "aws_vpc" "ncpl-vpc" {
  cidr_block = var.aws_vpc
  tags = {
    Name= "NCPL-VPC"
  }
}