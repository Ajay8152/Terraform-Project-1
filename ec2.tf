resource "aws_instance" "myserver" {
  ami                         = "ami-0327f51db613d7bd2"
  instance_type               = "t2.micro"
  key_name                    = "newserver"
  subnet_id                   = aws_subnet.public-subnet.id
  vpc_security_group_ids      = [aws_security_group.nginx-sg.id]
  associate_public_ip_address = true

  user_data = <<-EOF
  #!/bin/bash
  sudo yum install nginx -y
  sudo systemctl start nginx
  EOF

  tags = {
    Name = "sample-server"
  }
}
