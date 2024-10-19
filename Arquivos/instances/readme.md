<h1 align=center>Instance.tf</h1>

### Estrutura do código - primeiro bloco
<p>
    O primeiro bloco de código procura a imagem mais recente do Debian 12 que usa virtualização HVM e é de propriedade do proprietário específico. Depois de encontrar essa AMI, você pode referenciá-la na configuração da instância EC2 para que sua instância seja criada com essa imagem. Isso é útil para garantir que você esteja sempre utilizando a versão mais recente da imagem do sistema operacional, com as últimas atualizações e melhorias de segurança.

  [Código original](https://github.com/Rodrigolppz/Vexpenses-Terraform/blob/main/Arquivos/instances/old-instance.tf)
</p>

#

### Primeira modificação

<p>
    No código original o subnet_id estava associado à main_subnet, porém, como criamos duas subnets separadas, precisei associar o subnet_id à subnet pública que havia sido criada anteriormente.
    
</p>
