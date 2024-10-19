### <h1 align=center> AWS Network </h1>

Essa é uma parte bastante importante de entender, por isso farei questão de explicar detalhadamente cada decisão tomada no código.

### Antes de começarmos...

Preciso fazer uma breve explicação sobre como funciona a network na AWS, para isso vamos tomar como base esse diagrama:

[Network.png](https://github.com/Rodrigolppz/Vexpenses-Terraform/blob/main/Arquivos/network/Network.png)

### 1 - O que é VPC ? 
<p>
  VPC (Virtual Private Cloud) é uma rede virtual isolada dentro da AWS onde a gente executa e gerencia recursos como instâncias EC2, bancos de dados, e outros serviços em nuvem. Podemos imaginar a VPC como uma cerca que isola seus recursos de todos os outros recursos de outras VPCs. Esse isolamento garante que seu ambiente de rede seja privado e seguro, permitindo controle total sobre a configuração da rede, como definir sub-redes, gateways, e regras de segurança, mantendo flexibilidade e escalabilidade na nuvem.
</p>


