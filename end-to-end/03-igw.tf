resource "aws_internet_gateway" "ncpl-igw" {
    vpc_id = aws_vpc.ncpl-vpc.id
    tags = {
      Name = "NCPL-IGW"
    }
}