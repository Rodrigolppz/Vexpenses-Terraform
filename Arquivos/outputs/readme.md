<h1 align=center>Outputs.tf</h1>

### Explicação Código

private_key:

description: Informa que o valor é a chave privada usada para acessar a instância EC2.

value: Mostra o valor da chave privada gerada pelo recurso tls_private_key.

sensitive: Definido como true para garantir que a chave privada não seja exibida em logs ou saídas não seguras.

ec2_public_ip:

description: Informa que o valor é o endereço IP público da instância EC2.

value: Referencia o endereço IP público da instância aws_instance.debian_ec2.
