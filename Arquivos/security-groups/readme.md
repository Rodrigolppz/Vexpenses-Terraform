<h1 Align=center> Security Groups</h1>

### Qual o conceito de Security groups ? 

Os Security Groups são uma funcionalidade fundamental da AWS que atua como um firewall virtual para controlar o tráfego de entrada e saída de instâncias EC2. 

Um security group é um conjunto de regras que define quais tráfegos de rede são permitidos ou negados para as instâncias associadas a ele. Cada security group pode conter várias regras que controlam o acesso ao tráfego.

#

### Modificação para aumentar a segurança

<p>
O código original permite uma conexão SSH de todas as máquinas, isso é especificado pelo ip ["0.0.0.0/0"] que representa a totalidade de máquinas que podem conectar na instância remotamente.

A fim de aumentar a segurança da instância, configurei o SSH para permitir conexão remota apenas do ip da minha máquina.

Para isso eu precisei alterar as regras de entrada do código, substituindo o <b>cidr_blocks</b> de ["0.0.0.0/0"] pelo endereço IP da minha máquina seguido de /32, que representa um único endereço IP.
  
</p>

[Código Antigo](https://github.com/Rodrigolppz/Vexpenses-Terraform/blob/main/Arquivos/security-groups/old-security-groups.tf)

[Código Final](https://github.com/Rodrigolppz/Vexpenses-Terraform/blob/main/terraform%20project/security_groups.tf)
