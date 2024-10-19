<h1 align=center>Instance.tf</h1>

### O que faz o código no Instance.tf
<p>
  Esse código no arquivo instance.tf é responsável por provisionar uma instância EC2 na AWS, utilizando uma AMI do Debian 12, configurando sua rede, segurança e instalando o servidor Nginx automaticamente.

  [Código original](https://github.com/Rodrigolppz/Vexpenses-Terraform/blob/main/Arquivos/instances/old-instance.tf)
</p>

#

### Primeira modificação - Subnet_id

<p>
    No código original o subnet_id estava associado à main_subnet, porém, como criamos duas subnets separadas, precisei associar o subnet_id à subnet pública que havia sido criada anteriormente.
    
</p>

#

### Segunda modificação - Instalar e iniciar NGINX automaticamente

<p>
Para fazer com que o nginx seja instalado e iniciado automaticamente após a inicialização do EC2, precisamos adicionar os seguintes comandos dentro do <b>user_data</b>
    
apt-get install nginx -y

systemctl start nginx

systemctl enable nginx           
    
</p>

