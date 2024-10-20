<h1 align=center>Variables.tf</h1>

### Qual o conceito das variáveis ?

No Terraform, variáveis são usadas para tornar os scripts mais flexíveis e reutilizáveis, permitindo que os valores possam ser parametrizados em vez de serem codificados diretamente no código. Elas são especialmente úteis para abstrair detalhes que podem mudar dependendo do ambiente (como produção, desenvolvimento, etc.), tornando mais fácil ajustar as configurações sem alterar o código base.

### O que faz cada bloco de código ? 

Cada bloco variable "nome da variável" define uma variável no nosso projeto, nesse caso foram definidas duas variáveis: "projeto" e "candidato", fazendo assim com que se eu quiser alterar a variável em algum momento eu não precise alterar ela em todos os códigos, somente no código referente as variáveis, facilitando o trabalho e economizando tempo.

### Tipos de variáveis

É interessante explicar que existem 3 tipos de variáveis, as variáveis de entrada, saída e locais. No caso do nosso projeto estamos usando variáveis de entrada.

<b>Variáveis de entrada:</b> Servem para presonalizar a infraestrutura ao executar o código.

<b>Variáveis de saída:</b> Servem para mostrar informações sobre a infraestrutura criada.

<b>Variáveis locais:</b> Servem para definir e calcular valores  no arquivo de configuração sem a necessidade de fornecer valores externos.
