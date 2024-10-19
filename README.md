### <h1 align=center> VEXPENSES <img src="https://github.com/Rodrigolppz/Vexpenses-Terraform/blob/main/Vexpenses.png" alt="Descrição da imagem" width="27"> - Projeto DevOps | Terraform - AWS </h1>

<p>
  
 <b> <img src="https://raw.githubusercontent.com/Tarikul-Islam-Anik/Animated-Fluent-Emojis/master/Emojis/Hand%20gestures/Hand%20with%20Fingers%20Splayed.png" alt="Hand with Fingers Splayed" width="25" height="25" /> Olá , seja bem-vindo ao meu repositório dedicado ao projeto da VEXPENSES, neste repositório vou detalhar todo o processo realizado para completar a tarefa proposta.</b>

  
</p>

<p>

  <b>Começarei apresentando o desafio e em seguida explicarei com detalhes sobre cada etapa e cada alteração feita, espero que goste! =)</b>
  
</p>

#

### Objetivo:
<b>Demonstrar conhecimentos em Infraestrutura como Código (IaC) utilizando Terraform, bem como habilidades em segurança e automação de configuração de servidores.</b>

### Desafio:
<b>O desafio consiste em analisar, modificar e melhorar um código Terraform para criar um ambiente seguro na AWS, automatizando a instalação do Nginx na instância EC2 e implementando boas práticas de segurança.</b>

#

<h1 align=center >Organizar e modificar o arquivo main.tf</h1>


### 1º passo
Analisar o arquivo [Main.tf](https://github.com/Rodrigolppz/Vexpenses-Terraform/blob/main/Arquivos/main.tf) disponibilizado, entendê-lo e identificar possiveis melhorias.

#

### 2º passo
Quebrar o arquivo Main.tf em vários arquivos diferentes, um para cada função, exemplo: 

├── [Provider.tf](https://github.com/Rodrigolppz/Vexpenses-Terraform/tree/main/Arquivos/Provider)              
├── [variables.tf](https://github.com/Rodrigolppz/Vexpenses-Terraform/tree/main/Arquivos/Variables)             
├── [network.tf](https://github.com/Rodrigolppz/Vexpenses-Terraform/tree/main/Arquivos/network)               
├── [security_groups.tf](https://github.com/Rodrigolppz/Vexpenses-Terraform/tree/main/Arquivos/security-groups)       
├── [instances.tf](https://github.com/Rodrigolppz/Vexpenses-Terraform/tree/main/Arquivos/instances)   
├── [outputs.tf](https://github.com/Rodrigolppz/Vexpenses-Terraform/tree/main/Arquivos/outputs)


Isso facilita a leitura, o entendimento, a organização e o workflow.

#

### 3º passo
Revisar as configurações separadas e fazer ajustes baseados no que o projeto pede. 

Comecei substituindo os critérios das variáveis.

[Explicação detalhada das variáveis](https://github.com/Rodrigolppz/Vexpenses-Terraform/tree/main/Arquivos/Vari%C3%A1veis)

#

### 4º passo
Fazer a configuração da network, essa é a parte que eu considero mais importante, pois é aqui que vai ser feito todo o set up da rede e ajustes de segurança. 

[Explicação detalhada passo a passo sobre as configurações da network](https://github.com/Rodrigolppz/Vexpenses-Terraform/tree/main/Arquivos/network)

#

### 5º passo

Aumentar a segurança da nossa infraestrutura mexendo nos códigos referentes ao security_groups.

[Explicação Security groups](https://github.com/Rodrigolppz/Vexpenses-Terraform/tree/main/Arquivos/security-groups)

#

### 6º passo
Analisar o código referente à instância, realizar as alterações necessárias e criar o script que instala e inicia o nginx automaticamente ao iniciar o EC2.

[Explicação Instance](https://github.com/Rodrigolppz/Vexpenses-Terraform/tree/main/Arquivos/instances)

#

### Extra

Os códigos referentes às keypairs, outputs e providers já vieram configurados corretamente, portanto não há necessidade de nenhuma alteração, para mais detalhes acerca desses segue abaixo:

[keypairs.tf](https://github.com/Rodrigolppz/Vexpenses-Terraform/tree/main/Arquivos/keypairs)

[outputs.tf](https://github.com/Rodrigolppz/Vexpenses-Terraform/tree/main/Arquivos/outputs)

[Provider.tf](https://github.com/Rodrigolppz/Vexpenses-Terraform/tree/main/Arquivos/Provider)

Com isso concluimos a etapa de configuração do arquivo main.tf, seguindo todo esse passo a passo o projeto estará pronto para ser inicializado na nuvem.

#

<h1 align=center>Inicializar o EC2</h1>

### Tutorial

Após fazer toda a configuração, basta se dirigir até o terminal (no meu caso é o Ubuntu), digitar aws config e colar as respectivas chaves, para isso precisa criar as chaves de acesso no console da AWS e instalar o aws-cli. (Vou dispensar detalhes nessa explicação)

Feito isso, basta digitar os seguintes comandos no terminal:

Terraform init

Terraform apply

Estando tudo configurado corretamente, toda a infraestrutura será criada no console da AWS.

#

<H1 align=center>Conclusão</H1>

<b>O projeto se encerra por aqui, estarei separando </b>














