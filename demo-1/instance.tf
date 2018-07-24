resource "aws_instance" "example" {
  ami           = "${lookup(var.AMIS, var.AWS_REGION)}"
  instance_type = "t2.micro"
  key_name      = "devops-training"

  user_data = <<-EOF
              #!/bin/bash
              sudo apt-get -y update
              sudo apt-get -y install nginx 
              EOF
}

resource "aws_instance" "example1" {
  ami           = "${lookup(var.AMIS, var.AWS_REGION)}"
  instance_type = "t2.micro"
  key_name      = "devops-training"

  user_data = <<-EOF
              #!/bin/bash
              sudo apt-get -y update
              sudo apt-get -y install apache2
              EOF
}
