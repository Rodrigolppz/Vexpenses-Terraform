# Configurações das instâncias EC2

data "aws_ami" "amazon_linux" {
  most_recent = true

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"] 
  }

  owners = ["137112412989"]
}

resource "aws_instance" "amazon_linux" {
  ami             = data.aws_ami.amazon_linux.id 
  instance_type   = "t2.micro" # Refere-se ao tipo de instância, t2.micro significa que é uma instância leve, elegível ao nível gratuíto da AWS.
  subnet_id = aws_subnet.public_subnet.id # Alteração referente à mudança de uma subnet main para duas subnets diferentes.
  key_name        = aws_key_pair.ec2_key_pair.key_name # Refere-se à chave SSH que será usada para acessar a instância. 
  security_groups = [aws_security_group.main_sg.id] # Associa a instância ao grupo de segurança main_sg, que contém as regras de firewall que controlam o tráfego de entrada e saída da instância.

  associate_public_ip_address = true # Define que a instância receberá um endereço IP público, permitindo acesso à internet.

  root_block_device {
    volume_size           = 20
    volume_type           = "gp2"
    delete_on_termination = true
  }

  user_data = <<-EOF
              #!/bin/bash
              yum update -y
              amazon-linux-extras install nginx1 -y
              systemctl start nginx
              systemctl enable nginx
              echo "Nginx instalado e em execução."
              EOF

  tags = {
    Name = "${var.projeto}-${var.candidato}-ec2"
  }
}