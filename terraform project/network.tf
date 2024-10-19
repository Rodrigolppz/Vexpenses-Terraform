# Recursos de rede (VPC, subnets, etc.)

# Criação da Main VPC

resource "aws_vpc" "main_vpc" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name = "${var.projeto}-${var.candidato}-vpc" 
  }
}

#Primeira modificação

#Configuração subnet pública 

resource "aws_subnet" "public_subnet" {
  vpc_id            = aws_vpc.main_vpc.id
  cidr_block        = "10.0.1.0/24"  # Faixa de IP da subnet pública
  availability_zone = "us-east-1a"
  map_public_ip_on_launch = true     # Garante que as instâncias nessa subnet recebam um IP público

  tags = {
    Name = "${var.projeto}-${var.candidato}-public-subnet"
  }
}

#Configuração Subnet Privada

resource "aws_subnet" "private_subnet" {
  vpc_id            = aws_vpc.main_vpc.id
  cidr_block        = "10.0.2.0/24"  # Faixa de IP da subnet privada
  availability_zone = "us-east-1a"

  tags = {
    Name = "${var.projeto}-${var.candidato}-private-subnet"
  }
}



# Gateway que conecta a VPC à internet

resource "aws_internet_gateway" "main_igw" {
  vpc_id = aws_vpc.main_vpc.id

  tags = {
    Name = "${var.projeto}-${var.candidato}-igw"
  }
}


# Configura a routle table entre a subnet e o gateway

resource "aws_route_table" "public_route_table" {
  vpc_id = aws_vpc.main_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.main_igw.id
  }

  tags = {
    Name = "${var.projeto}-${var.candidato}-route_table"
  }
}

# Associando a Route table pública à subnet pública 

resource "aws_route_table_association" "public_route_table_association" {
  subnet_id      = aws_subnet.public_subnet.id  # Referencia a subnet pública
  route_table_id = aws_route_table.public_route_table.id
}

# Configura a route table para a subnet privada

resource "aws_route_table" "private_route_table" {
  vpc_id = aws_vpc.main_vpc.id

  # Não adicionamos rotas para o Internet Gateway aqui
  tags = {
    Name = "${var.projeto}-${var.candidato}-private_route_table"
  }
}

# Associando a Route Table privada à subnet privada
resource "aws_route_table_association" "private_route_table_association" {
  subnet_id      = aws_subnet.private_subnet.id  # Referencia a subnet privada
  route_table_id = aws_route_table.private_route_table.id
}

# Criando um elastic ip 
resource "aws_eip" "nat" {
  domain = "vpc"  # Indica que este EIP será associado a uma VPC
}


# Criar o NAT Gateway
resource "aws_nat_gateway" "main_nat" {
  allocation_id = aws_eip.nat.id  
  subnet_id    = aws_subnet.public_subnet.id  # O NAT deve estar na subnet pública
}

# Adicione uma rota na Route Table da subnet privada para o NAT Gateway
resource "aws_route" "private_route" {
  route_table_id         = aws_route_table.private_route_table.id
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = aws_nat_gateway.main_nat.id
}
