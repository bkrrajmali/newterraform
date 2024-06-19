resource "aws_instance" "ec2-provisioner-example" {
ami = "ami-0e001c9271cf7f3b9"
availability_zone = "us-east-1a"
instance_type = "t2.micro"
associate_public_ip_address = "true"
key_name = "1104"

provisioner "local-exec" {
  command = "echo 'Hello From ${aws_instance.ec2-provisioner-example.private_ip}' >instance_info.txt"
}

provisioner "remote-exec" {
  inline = [ 
    "sudo apt-get update",
    "sudo apt-get install nginx -y",
    "sudo systemctl start nginx",
    "echo '<h1>Deployed Via Terraform</h1>' | sudo tee -a /var/www/html/index.html"
   ]
}
connection {
  type = "ssh"
  user = "ubuntu"
  private_key = file(1104.pem)
  host = self.public_ip
}


}
