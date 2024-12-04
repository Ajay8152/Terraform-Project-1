output "instance_public_ip" {
    description = "the public ip address of the ec2 instance"
    value = aws_instance.myserver.public_ip
}

output "instance_url" {
    description = "The url to access the Nginx server"
    value = "http://${aws_instance.myserver.public_ip}"
  
}
