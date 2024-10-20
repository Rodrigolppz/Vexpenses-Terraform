### Primeira modificação 

<p>
  No código original tinhamos apenas uma "main_subnet", conforme eu expliquei na página anterior, o ideal é que tenhamos duas subnets separadas, sendo uma pública e uma privada, portanto essa foi a primeira alteração feita no código a fim de torna-lo mais seguro e profissional.

  ### Criação da Subnet pública

  <code> resource "aws_subnet" "public_subnet" {
  vpc_id            = aws_vpc.main_vpc.id
  cidr_block        = "10.0.1.0/24"  # Faixa de IP da subnet pública
  availability_zone = "us-east-1a"
  map_public_ip_on_launch = true     # Garante que as instâncias nessa subnet recebam um IP público
  
  tags = {
    Name = "${var.projeto}-${var.candidato}-public-subnet"
  }
}</code>

### Criação da Subnet Privada

<code> resource "aws_subnet" "private_subnet" {
  vpc_id            = aws_vpc.main_vpc.id
  cidr_block        = "10.0.2.0/24"  # Faixa de IP da subnet privada
  availability_zone = "us-east-1a"
  
  tags = {
    Name = "${var.projeto}-${var.candidato}-private-subnet"
  }
}</code>
 


  [Código original](https://github.com/Rodrigolppz/Vexpenses-Terraform/blob/main/Arquivos/network/old-network.tf)
  
</p>

#

### Segunda Modificação 
<p>
  Com as duas subnets criadas, precisamos configurar uma route table para a subnet pública e o NAT gateway para a subnet privada, a fim de que a subnet pública tenha acesso total à internet, e a subnet privada tenha acesso à internet de forma segura, sem que a internet tenha acesso à subnet privada. 

<b>Todas essas modificações estão detalhadas no código final</b>
  
  
[Código Final](https://github.com/Rodrigolppz/Vexpenses-Terraform/blob/main/terraform%20project/network.tf)
  
</p>

#

### Terceira modificação
<p>
  
Criar um Elastic IP associado ao NAT Gateway. Esse Elastic IP garantirá que o NAT Gateway tenha um IP público fixo, permitindo assim que as instâncias na subnet privada tenham acesso à Internet de forma segura, enquanto permanecem isoladas.


<code> # Criando um elastic ip 
resource "aws_eip" "nat" {
  domain = "vpc"  # Indica que este EIP será associado a uma VPC
} </code>



#

Com essas 3 modificações o nosso código já está Agradável para darmos continuidade nos outros arquivos do projeto!

[Código final](https://github.com/Rodrigolppz/Vexpenses-Terraform/blob/main/terraform%20project/network.tf)



 
