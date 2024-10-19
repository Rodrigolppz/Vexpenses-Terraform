<h1 align=center>Keypairs.tf</h1>

### Explicação do bloco de código

tls_private_key: Cria uma chave privada usando o algoritmo RSA com 2048 bits.
aws_key_pair: Usa a chave pública gerada pela chave privada para criar um par de chaves na AWS, associando a chave pública à instância EC2.
