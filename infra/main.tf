resource "aws_instance" "devops_site" {
  ami           = "ami-0c55b159cbfafe1f0" # Amazon Linux 2 (exemplo)
  instance_type = var.instance_type

  tags = {
    Name = "DevOpsSite"
  }

  key_name = "minha-chave"

  user_data = <<-EOF
              #!/bin/bash
              yum update -y
              amazon-linux-extras install docker -y
              service docker start
              docker run -d -p 80:80 nginx
              EOF
}
