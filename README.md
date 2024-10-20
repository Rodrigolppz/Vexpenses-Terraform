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

<h1 align=center>Ordem de visualização do projeto</h1>

 ### Antes de começarmos...

<p>
  <b>Deixarei listado abaixo as pastas do projeto e suas respectivas funções, para que possa acompanhar o trabalho de forma fluída.</b>
  
  Essa é a versão final do projeto com tudo funcionando como deveria, commit direto do vscode.
  
  [Projeto pronto](https://github.com/Rodrigolppz/Vexpenses-Terraform/tree/main/terraform%20project)
  
  
</p>
 
  



<h1 align=center >Organizar e modificar o arquivo main.tf</h1>


### 1º passo
Analisar o arquivo [Main.tf](https://github.com/Rodrigolppz/Vexpenses-Terraform/blob/main/Arquivos/main.tf) disponibilizado, entendê-lo e identificar possiveis melhorias.

#

### 2º passo
Quebrar o arquivo Main.tf em vários arquivos diferentes, um para cada função, exemplo: 


├── [Provider.tf](https://github.com/Rodrigolppz/Vexpenses-Terraform/blob/main/terraform%20project/provider.tf)

├── [variables.tf](https://github.com/Rodrigolppz/Vexpenses-Terraform/blob/main/terraform%20project/variables.tf)

├── [network.tf](https://github.com/Rodrigolppz/Vexpenses-Terraform/blob/main/terraform%20project/network.tf)

├── [security_groups.tf](https://github.com/Rodrigolppz/Vexpenses-Terraform/blob/main/terraform%20project/security_groups.tf)

├── [instances.tf](https://github.com/Rodrigolppz/Vexpenses-Terraform/blob/main/terraform%20project/instances.tf)

├── [keypairs.tf](https://github.com/Rodrigolppz/Vexpenses-Terraform/blob/main/terraform%20project/keypair.tf)

├── [outputs.tf](https://github.com/Rodrigolppz/Vexpenses-Terraform/blob/main/terraform%20project/outputs.tf)

Isso facilita a leitura, o entendimento, a organização e o workflow.

#

### 3º passo
Revisar as configurações separadas e fazer ajustes baseados no que o projeto pede. 

Comecei substituindo os critérios das variáveis.

[Explicação das variáveis](https://github.com/Rodrigolppz/Vexpenses-Terraform/tree/main/Arquivos/Variables)

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

<H1 align=center>Passos finais</H1>

<b>Agora que já está tudo rodando como deveria, basta realizar os testes para saber se todas as especificações foram atentidas, para isso vamos seguir um passo a passo simples</b>

### Conectar por SSH
<p>
  Aqui nós precisamos conectar na nossa instância EC2 por SSH para garantir de que as configurações do security_group estão funcionando corretamente, para isso basta:

  ir até o local aonde está localizado o arquivo .pem, que é o arquivo que contém a nossa chave privada de acesso, no meu caso é -> cd /root/terraform\ project/

  Após isso é necessário pegar o Public IP da sua instância EC2 no console da AWS e conectar utilizando o comando -> ssh -i my-key.pem ec2-user@My.Public.Ip

  <img src=https://github.com/Rodrigolppz/Vexpenses-Terraform/blob/main/SSH_Connection.png>
</p>

#

### Verificar o NGINX 
<p>
  Após acessar o EC2 remotamente, é importante garantirmos que  NGINX está funcionando como deveria, para isso basta digitar os comandos:

  sudo cat /var/log/cloud-init-output.log

  Isso garantirá que o Nginx foi instalado corretamente.

  Depois:

  sudo systemctl status nginx

  Esse comando verifica se o nginx está de fato ativo.

  <img src=https://github.com/Rodrigolppz/Vexpenses-Terraform/blob/main/Nginx.png>
</p>

#

<h1 align=center>Conclusão</h1>

### Recapitulando

<b>Vamos recapitular tudo o que foi feito desde o início...</b>

Primeiro: Foi enviado um arquivo denominado main.tf, este arquivo definia a criação de uma infraestrutura básica na AWS, incluindo VPC, Subnet, Grupo de Segurança, Key Pair e uma instância EC2.

O objetivo era estudar e analisar este arquivo, a fim de entender o que estava sendo feito e implementar melhores práticas de segurança de acordo com meu conhecimento e boas práticas.

Após analisar o conteúdo e quebra-lo em arquivos diferentes para cada código, o próximo passo foi analisar os blocos de códigos e realizar melhorias na segurança.

Depois de implementar as melhores práticas de segurança em cada arquivo, era a hora de iniciar a instância EC2 utilizando -> terraform init -> terraform apply.

Tendo iniciado a instância, bastava conectar por SSH para garantir de que as configurações estavam funcionando e que minha máquina tinha acesso ao EC2.

Por fim, uma vez que conectado dentro do EC2, era só verificar se o nginx teria instalado e iniciado automaticamente como foi programado no nosso user_data.

Agora temos uma infraestrutura completa rodando na AWS.

Foi um projeto muito interessante de fazer, aprendi muita coisa ao longo do percurso, a partir de agora me sinto bastante confiante para aprender ainda mais sobre IaC e o mundo DevOps, obrigado se voce viu até aqui.

Sinta-se a vontade para dar uma olhada nos meus outros repositórios e entrar em contato caso queira! =)














