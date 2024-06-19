resource "aws_route_table_association" "ncpl-rta" {
  subnet_id = aws_subnet.ncpl-public-subnet.id
  route_table_id = aws_route_table.ncpl-route-table.id
}

resource "aws_route_table_association" "ncpl-pvt-rta" {
  subnet_id = aws_subnet.ncpl-pvt-subnet.id
  route_table_id = aws_route_table.ncpl-pvt-route.id
}