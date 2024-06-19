resource "aws_route_table" "ncpl-route-table" {
  vpc_id = aws_vpc.ncpl-vpc.id
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.ncpl-igw.id
    }
}