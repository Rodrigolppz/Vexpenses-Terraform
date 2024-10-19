### Primeira modificação 

<p>
  No código original tinhamos apenas uma "main_subnet", conforme eu expliquei na página anterior, o ideal é que tenhamos duas subnets separadas, sendo uma pública e uma privada, portanto essa foi a primeira alteração feita no código a fim de torna-lo mais seguro e profissional.


  [Código original](https://github.com/Rodrigolppz/Vexpenses-Terraform/blob/main/Arquivos/network/old-network.tf)
  
</p>

#

### Segunda Modificação 
<p>
  Com as duas subnets criadas, precisamos configurar uma route table para a subnet pública e o NAT gateway para a subnet privada, a fim de que a subnet pública tenha acesso total à internet, e a subnet privada tenha acesso à internet de forma segura, sem que a internet tenha acesso à subnet privada. 
  
[Código original](https://github.com/Rodrigolppz/Vexpenses-Terraform/blob/main/Arquivos/network/old-network.tf)
  
</p>

#

### Terceira modificação
Criar um Elastic IP associado ao NAT Gateway. Esse Elastic IP garantirá que o NAT Gateway tenha um IP público fixo, permitindo assim que as instâncias na subnet privada tenham acesso à Internet de forma segura, enquanto permanecem isoladas.


 
