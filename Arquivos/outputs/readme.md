<h1 align=center>Outputs.tf</h1>

### Qual o conceito de Outputs ? 

Os outputs em Terraform são um recurso fundamental que permite exibir informações após a aplicação de uma configuração. Eles são usados para fornecer dados sobre os recursos criados ou modificados em uma infraestrutura gerenciada pelo Terraform. 

Outputs são declarações que definem informações que você deseja tornar disponíveis após a execução do Terraform. Elas permitem que você extraia e exiba dados relevantes sobre os recursos criados, como IDs, endereços IP, ou outras propriedades importantes.

#

### Modificações feitas no código

No código antigo, o valor do output <b>ec2_public_ip</b> referenciava a instância <b>aws_instance.debian_ec2</b> para obter o endereço IP público.

No código novo, essa referência foi alterada para <b>aws_instance.amazon_linux</b>, que foi a alteração realizada no Instance.tf para gerar a AMI Amazon Linux 2.

[Código Final](https://github.com/Rodrigolppz/Vexpenses-Terraform/blob/main/terraform%20project/outputs.tf)

