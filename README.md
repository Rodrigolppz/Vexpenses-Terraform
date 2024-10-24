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

<h1 align=center> <img src="https://raw.githubusercontent.com/Tarikul-Islam-Anik/Animated-Fluent-Emojis/master/Emojis/Symbols/Warning.png" alt="Warning" width="35" height="35" /> AVISOS PRÉVIOS <img src="https://raw.githubusercontent.com/Tarikul-Islam-Anik/Animated-Fluent-Emojis/master/Emojis/Symbols/Warning.png" alt="Warning" width="35" height="35" /> </h1> 

 ### Antes de começarmos...

<p>
  <b>Deixarei listado abaixo as pastas do projeto e suas respectivas funções, para que você possa acompanhar o trabalho de forma fluida.</b>
  
  <b> Essa é a versão final dos códigos com tudo funcionando como deveria, commit direto do vscode. </b>
  
  [Terraform project](https://github.com/Rodrigolppz/Vexpenses-Terraform/tree/main/terraform%20project)

  <b>Esse é o resultado final no console da AWS após todas as configurações feitas.</b>

  [Resultado final - console da AWS](https://github.com/Rodrigolppz/Vexpenses-Terraform/tree/main/Resultado-Final)

  <b>Esta é a pasta dedicada à explicação de cada arquivo <code>.tf</code> e seus detalhes importantes.</b>

  [Arquivos - Explicação de cada arquivo.tf](https://github.com/Rodrigolppz/Vexpenses-Terraform/tree/main/Arquivos)

  <b><img src="https://raw.githubusercontent.com/Tarikul-Islam-Anik/Animated-Fluent-Emojis/master/Emojis/Hand%20gestures/Backhand%20Index%20Pointing%20Right.png" alt="Backhand Index Pointing Right" width="18" height="18" /> Agora, para acompanhar o projeto na ordem em que foi feito, basta rolar para baixo neste README e seguir o passo a passo. <img src="https://raw.githubusercontent.com/Tarikul-Islam-Anik/Animated-Fluent-Emojis/master/Emojis/Hand%20gestures/Backhand%20Index%20Pointing%20Left.png" alt="Backhand Index Pointing Left" width="18" height="18" /> </b>
  
</p>
  
#


<h1 align=center >Início - Organizar e modificar o arquivo <code>main.tf</code></h1>


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

### 3º passo - Variáveis

Revisar as configurações separadas e fazer ajustes baseados no que o projeto pede. 

Comecei substituindo os critérios das variáveis.

[Explicação das variáveis](https://github.com/Rodrigolppz/Vexpenses-Terraform/tree/main/Arquivos/Variables)

#

### 4º passo - Network 

Fazer a configuração da network, essa é a parte que eu considero mais importante, pois é aqui que vai ser feito todo o set up da rede e ajustes de segurança. 

[Explicação detalhada passo a passo sobre as configurações da network](https://github.com/Rodrigolppz/Vexpenses-Terraform/tree/main/Arquivos/network)

#

### 5º passo - Security groups

Aumentar a segurança da nossa infraestrutura mexendo nos códigos referentes ao security_groups.

[Explicação Security groups](https://github.com/Rodrigolppz/Vexpenses-Terraform/tree/main/Arquivos/security-groups)

#

### 6º passo - Instância EC2

Analisar o código referente à instância, realizar as alterações necessárias e criar o script que instala e inicia o nginx automaticamente ao iniciar o EC2.

[Explicação Instance](https://github.com/Rodrigolppz/Vexpenses-Terraform/tree/main/Arquivos/instances)

#

### 7º passo - Keypairs

Adicionar uma resource "local_file" para criar uma pasta com a chave privada que precisaremos para conectar via SSH.

[Explicação keypairs.tf](https://github.com/Rodrigolppz/Vexpenses-Terraform/tree/main/Arquivos/keypairs)

#

### 8º passo - Outputs

Tendo em vista que a AMI foi alterada no <code>Instance.tf</code>, precisamos alterar sua referenciação nos Outputs.

[Explicação outputs](https://github.com/Rodrigolppz/Vexpenses-Terraform/tree/main/Arquivos/outputs)

#

### 9º passo - Provider

O provider já veio configurado corretamente no arquivo original, portanto não precisamos realizar nenhuma alteração no conteúdo.

[Explicação Provider](https://github.com/Rodrigolppz/Vexpenses-Terraform/tree/main/Arquivos/Provider)

#

### Com isso concluimos a etapa de configuração do arquivo <code>main.tf</code>, seguindo todo esse passo a passo o projeto estará pronto para ser inicializado na nuvem.

#

<h1 align=center>Segunda etapa - Inicializar o EC2</h1>

### Tutorial

Após fazer toda a configuração, basta se dirigir até o terminal (no meu caso é o Ubuntu), digitar aws config e colar as respectivas chaves, para isso precisa criar as chaves de acesso no console da AWS e instalar o aws-cli. (Vou dispensar detalhes nessa parte)

Feito isso, basta digitar os seguintes comandos no terminal:

<code>Terraform init</code>

<code>Terraform apply</code>

Estando tudo configurado corretamente, toda a infraestrutura será criada no console da AWS.

#

<H1 align=center>Final - SSH e NGINX</H1>

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

Sinta-se à vontade para dar uma olhada nos meus outros repositórios e entrar em contato! <img src="https://raw.githubusercontent.com/Tarikul-Islam-Anik/Telegram-Animated-Emojis/main/Smileys/Winking%20Face.webp" alt="Winking Face" width="20" height="20" />














