resource "aws_instance" "demoec2" {
  ami                    = data.aws_ami.ec2_ami.id
  instance_type          = var.ec2_type
  subnet_id              = aws_subnet.demosubnet.id
  vpc_security_group_ids = [aws_security_group.demosg.id]

  tags = {
    "Name" = "Demo EC2"
  }

#   key_name  = "nagesh"
  user_data = <<EOF
    #!/bin/bash
    sudo yum update -y
    sudo yum install httpd -y
    sudo systemctl start httpd
    sudo systemctl enable httpd
  EOF

#   connection {
#     type        = "ssh"
#     private_key = file("C:/Users/nages/Documents/Training/AWS/practice/nagesh.pem")
#     user        = "ec2-user"
#     password    = ""
#     host        = self.public_ip
#   }

#   provisioner "file" {
#     source      = "C:/Users/nages/Documents/Training/html/app2/"
#     destination = "/home/ec2-user"
#   }

#   provisioner "remote-exec" {
#     inline = [
#       "sleep 60",
#       "sudo cp -R /home/ec2-user/. /var/www/html"
#     ]
#   }

}