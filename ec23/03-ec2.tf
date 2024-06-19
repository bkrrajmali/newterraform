resource "aws_instance" "ec2" {
  count = length(var.instance_types)
  ami = var.ami_id
  instance_type = element(var.instance_types,count.index)
  key_name = var.key_name
  tags = {
    Name = "Instance-${element(var.instance_types,count.index)}"
  }
}