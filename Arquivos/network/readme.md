### <h1 align=center> AWS Network </h1>

Essa é uma parte bastante importante de entender, por isso farei questão de explicar detalhadamente cada decisão tomada no código.

### Antes de começarmos...

Preciso fazer uma breve explicação sobre como funciona a network na AWS, para isso vamos tomar como base esse diagrama:

[Network.png](https://github.com/Rodrigolppz/Vexpenses-Terraform/blob/main/Arquivos/network/Network.png)
#
### Como funciona o diagrama ? 

<p>
  O diagrama acima representa o sistema básico de network da AWS.

 Para termos um ambiente seguro, é recomendável criar uma VPC. Dentro dessa VPC, devemos configurar duas subnets, uma privada e outra pública. 
 
 Separar essas subnets é uma prática recomendada de segurança, pois mantém os recursos críticos (como bancos de dados) isolados em uma subnet privada, sem acesso direto à internet. 
 
 Após configurar as subnets, é necessário conectar a VPC à internet, criando um Internet Gateway. 
 
 Em seguida, precisamos associar uma route table à subnet pública, vinculando-a ao Internet Gateway para que ela possa acessar a internet, enquanto a subnet privada continua isolada para proteger os recursos sensíveis.

</p>

#

### Subnet privada 

<p>
  Com essa configuração, a subnet pública tem acesso total à internet, enquanto a subnet privada não possui acesso direto à internet. 
  
  Porém, isso pode criar um problema: se quisermos, por exemplo, atualizar os pacotes das instâncias na subnet privada, não temos como fazer isso, já que elas não têm acesso à internet. 
  
  Para resolver isso, precisamos configurar um NAT Gateway. 
  
  O NAT Gateway permite que as instâncias na subnet privada tenham acesso à internet para realizar downloads e atualizações, mas sem expor essas instâncias diretamente à internet, garantindo que a internet não consiga acessar os recursos da subnet privada. 
  
  Funciona como se a subnet privada pudesse acessar o lado de fora, porém o lado de fora não pode acessar a subnet privada.
  
</p>

#

### Network Acess Control List e Security Group



