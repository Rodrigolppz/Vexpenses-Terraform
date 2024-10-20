<h1 align=center>Provider.tf</h1>

### Qual o conceito do provider ? 

O provider serve para conectar o Terraform a uma plataforma específica de infraestrutura, permitindo que ele gerencie e configure os recursos dessa plataforma. O provider funciona como um intermediário que traduz os comandos e a configuração do Terraform para a API da plataforma, seja ela um serviço em nuvem, como AWS, Azure, ou GCP, ou um serviço on-premises.

### O que faz o bloco de código [Provider.tf](https://github.com/Rodrigolppz/Vexpenses-Terraform/blob/main/Arquivos/Provider/provider.tf) ?

Esse bloco define o provider da AWS no Terraform, que é essencial para interagir com os recursos da nuvem.

<b>provider "aws":</b> Especifica que o Terraform vai utilizar a AWS como provedor de infraestrutura. Cada provedor contém instruções de como lidar com os recursos daquele serviço.

<b>region = "us-east-1":</b> Define a região onde os recursos serão provisionados. No caso, a região "us-east-1" (Norte da Virgínia) foi escolhida. Essa definição é importante porque a AWS distribui seus data centers ao redor do mundo, e escolher a região correta pode impactar a latência, custos e a conformidade com regulamentações.
