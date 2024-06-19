resource "aws_route_table" "ncpl-pvt-route" {
  vpc_id = aws_vpc.ncpl-vpc.id
  
}