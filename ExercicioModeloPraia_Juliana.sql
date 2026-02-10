CREATE DATABASE modeloPraia_juliana

CREATE TABLE funcionario(
idFuncionario INT PRIMARY KEY AUTO_INCREMENT,
nomeFuncionario VARCHAR(50) NOT NULL,
cpfFuncionario CHAR (11) UNIQUE NOT NULL,
celularFuncionario CHAR(11)

)

CREATE TABLE cliente (
idCliente INT PRIMARY KEY AUTO_INCREMENT,
nomeCliente VARCHAR (50) NOT	NULL,
cpfCliente CHAR(11) UNIQUE NOT NULL

)

CREATE TABLE aluguel (
idAluguel INT PRIMARY KEY	AUTO_INCREMENT,
idCliente INT NOT NULL,
idFuncionario INT NOT NULL,
dataHoraRetirada DATETIME NOT NULL,
dataHoraDevolucao DATETIME,
valorAPagar DECIMAL(10,2),
valorPago DECIMAL(10,2),
pago BIT,
formaPagamento VARCHAR(50),
qtVezes INT,


CONSTRAINT fk_aluguel_cliente FOREIGN KEY (idCliente) REFERENCES cliente (idcliente),
CONSTRAINT fk_aluguel_funcionario FOREIGN KEY (idFuncionario) REFERENCES funcionario (idFuncionario),

CONSTRAINT ck_qtdVezes CHECK (qtdVezes IN (1, 2, 3, 4)),
CONSTRAINT ck_pago CHECK (pago='Sim' OR pago='Não'),
CONSTRAINT ck_formaPagamento CHECK (formaPagamento IN ('Débito', 'Credito','PIX','Dinheiro'))
)

CREATE TABLE equipamento (
idEquipamento INT PRIMARY	KEY AUTO_INCREMENT,
nomeEquipamento VARCHAR(50) NOT NULL,
qtd INT NOT NULL,
valorHora DECIMAL(5,2) 
)

CREATE TABLE aluguelEquipamento(
idAluguelEquipamento INT  PRIMARY	KEY AUTO_INCREMENT,
idEquipamento INT NOT NULL,
idAluguel INT NOT NULL,
valorItem DECIMAL (10,2) NOT NULL,
valorUnitario DECIMAL (10,2) NOT NULL,
qtd INT,

CONSTRAINT fk_aluguelEquipamento_equipamento FOREIGN KEY (idEquipamento) REFERENCES equipamento (idEquipamento),
CONSTRAINT fk_aluguelEquipamento_aluguel FOREIGN KEY (idAluguel) REFERENCES aluguel (idAluguel)
)





