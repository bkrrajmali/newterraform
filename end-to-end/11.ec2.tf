resource "aws_instance" "ncpl-ec2" {
  ami = "ami-0e001c9271cf7f3b9"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.ncpl-public-subnet.id
  key_name = aws_key_pair.deployer.key_name
  vpc_security_group_ids = [aws_security_group.ncpl-sg.id]
#   count = var.instance_count
  provisioner "local-exec" {
    command = "echo 'Hello From ${aws_instance.ncpl-ec2.private_ip}'>instance_info.txt"
  }
  provisioner "remote-exec" {
    inline = [ 
        "echo 'Hello From $(hostname)' > instance_info.txt",
        "sudo apt-get update",
        "sudo apt install nginx -y",
        "sudo systemctl start nginx",
        "echo '<h1> Deployed Via Terraform </h1>' | sudo tee -a /var/www/html/index.html"
     ]
    connection {
      type = "ssh"
      user = "ubuntu"
      private_key = file("deployer_key.pem")
      host = "${aws_instance.ncpl-ec2.private_ip}"
    }
  }
  tags = {
    Name: "Instance1"
  }
}
