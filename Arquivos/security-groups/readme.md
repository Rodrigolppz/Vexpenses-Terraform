<h1 Align=center> Security Groups</h1>


<p>
  O código fornecido cria um Security Group na AWS, que atua como um firewall virtual para controlar o tráfego de entrada e saída das instâncias EC2. Porém existem algumas melhorias de segurança que podem ser feitas.

  [Código original](https://github.com/Rodrigolppz/Vexpenses-Terraform/blob/main/Arquivos/security-groups/old-security-groups.tf)
  
</p>

#

### Modificação para aumentar a segurança

<p>
O código original permite uma conexão SSH de todas as máquinas, isso é especificado pelo ip 0.0.0.0/0 que representa a totalidade de máquinas que podem conectar na instância remotamente.

A fim de aumentar a segurança da instância, configurei o SSH para permitir conexão remota apenas do ip da minha máquina.
  
</p>
