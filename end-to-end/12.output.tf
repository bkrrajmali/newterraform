output "aws_key_pair" {
  value = aws_key_pair.deployer.key_name
}

output "private_key_pem" {
  value = tls_private_key.key.private_key_pem
  sensitive = true
}
# output "instance_public_ip" {
#   value = aws_instance.ncpl-ec2.public_ip
# }