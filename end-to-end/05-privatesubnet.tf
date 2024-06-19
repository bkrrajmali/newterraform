resource "aws_subnet" "ncpl-pvt-subnet" {
  vpc_id = aws_vpc.ncpl-vpc.id
  cidr_block = "10.0.2.0/24"
  tags = {
    Name ="NCPL Private Subnet"
  }
}