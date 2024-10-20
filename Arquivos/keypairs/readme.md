<h1 align=center>Keypairs.tf</h1>

### Qual o conceito das keypairs ? 

Key pairs são um componente essencial da segurança na AWS e em outras plataformas de computação em nuvem. Elas são usadas principalmente para autenticação e criptografia ao acessar instâncias EC2 e outros serviços.

Um key pair consiste em duas chaves criptográficas:

Chave pública: Esta chave pode ser compartilhada e é instalada na instância que você deseja acessar.

Chave privada: Esta chave deve ser mantida em segredo e é usada para autenticar o usuário que tenta acessar a instância.

### Modificação feita no código

Adicionei o bloco 

<code>resource "local_file" "private_key" {
  content  = tls_private_key.ec2_key.private_key_pem
  filename = "${path.module}/my-key.pem" # Salva a chave privada localmente
}</code>

Esse bloco é responsável por implementar a funcionalidade de salvar a chave privada gerada para a instância EC2 em um arquivo local no sistema.

Essa chave vai ser utilizada posteriormente para acessar a instância via SSH.


