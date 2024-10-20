<h1 align=center>Instance.tf</h1>

### Qual o conceito da instância EC2 ? 

Na AWS, uma instância é uma máquina virtual que você pode iniciar para executar cargas de trabalho, como hospedar aplicativos, bancos de dados ou realizar processamento de dados. Essas instâncias são fornecidas pelo serviço Amazon EC2 (Elastic Compute Cloud), um dos serviços mais usados na AWS, que permite que os usuários provisionem capacidade de computação sob demanda.

Uma instância na AWS pode ser entendida como uma unidade de computação em nuvem que possui recursos de hardware (como CPU, memória e armazenamento) e software (sistema operacional e aplicativos). Ela é criada a partir de uma Amazon Machine Image (AMI), que é uma cópia de uma máquina virtual com um sistema operacional e, possivelmente, software pré-instalado.

#

### Primeira modificação - (AMI)

Eu estava tendo conflitos para iniciar a instância utilizando a imagem do debian12, portanto optei por utilizar uma AMI diferente, que nesse caso foi a Amazon Linux 2.

Antes:

<code>data "aws_ami" "debian12" {
  most_recent = true
  filter {
    name   = "name"
    values = ["debian-12-amd64-*"]
  }
  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  owners = ["679593333241"]
} </code>


Depois:

<code>data "aws_ami" "amazon_linux" {
  most_recent = true
  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"] 
  }
  owners = ["137112412989"]
}</code>




#

### Segunda modificação - Subnet_id

<p>
    No código original o subnet_id estava associado à main_subnet, porém, como criamos duas subnets separadas, precisei associar o subnet_id à subnet pública que havia sido criada anteriormente.
    
</p>

#

### Terceira modificação - Instalar e iniciar NGINX automaticamente

<p>
Para fazer com que o nginx seja instalado e iniciado automaticamente após a inicialização do EC2, precisamos adicionar os seguintes comandos dentro do <b>user_data</b>
    
<code>user_data = <<-EOF
              #!/bin/bash
              yum update -y
              amazon-linux-extras install nginx1 -y
              systemctl start nginx
              systemctl enable nginx
              echo "Nginx instalado e em execução."
              EOF </code>         
    
</p>

  [Código original](https://github.com/Rodrigolppz/Vexpenses-Terraform/blob/main/Arquivos/instances/old-instance.tf)

  [Código Final](https://github.com/Rodrigolppz/Vexpenses-Terraform/blob/main/terraform%20project/instances.tf)


