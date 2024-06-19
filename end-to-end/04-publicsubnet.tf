resource "aws_subnet" "ncpl-public-subnet" {
  vpc_id = aws_vpc.ncpl-vpc.id
  cidr_block = "10.0.1.0/24"
  map_public_ip_on_launch = true
  tags = {
    Name ="NCPL PUBLIC SUBNET"
  }
}