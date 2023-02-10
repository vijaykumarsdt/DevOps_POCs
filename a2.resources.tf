# Create EC2 Instance - Amazon Linux
resource "aws_instance" "jenkins-instance" {
  ami                    = data.aws_ami.amzlinux.id
  instance_type          = var.instance-type
  #key_name               = "AWSKeys.pem"
  user_data              = file("apache-install.sh")
  vpc_security_group_ids = [aws_security_group.vpc-ssh.id, aws_security_group.vpc-web.id]

  

  tags = {
    Name = "Jenkins_Instance"
  }
  #USERDATA OR PROVISIONER
/* provisioner "remote-exec" {
    inline = [
      "sudo yum install java-1.8.0-openjdk -y",
      "java -version",
    ]
  } */

}


