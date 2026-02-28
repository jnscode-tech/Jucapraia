/* Consultas*/
SELECT * FROM cliente
SELECT * FROM funcionario
SELECT * FROM equipamento
SELECT * FROM aluguelEquipamento
SELECT * FROM aluguel
 

/* EXERCICIO 01 */
ALTER TABLE cliente ADD (
 email VARCHAR(255) NOT NULL, cidade VARCHAR(50) NOT null,estado CHAR(2) NOT null, tipoLogradouro VARCHAR (15) NOT NULL,
 nomeLogradouro VARCHAR(60) NOT NULL, numero VARCHAR(6) NOT NULL,complemento VARCHAR(30)
)

/* EXERCICIO  02  - Inserir 10 clientes na tabela cliente*/
INSERT INTO cliente
( nomeCliente, cpfCliente, email, cidade, estado, tipoLogradouro, nomeLogradouro, numero, complemento)
VALUES	
('Donald','66183414000','donald225@uol.com.br','Santos','SP','Rua','das Margaridas','55',null),
('Margarida','02205576089','margaridinha554@uol.com','São Vicente','SP','Avenida','Capitao Luiz Pimenta','1225',NULL),
('Patinhas','11315414058','patopatinhas@uol.com.br','Florianópolis', 'SC','Rua','Almirante Lamego','475',NULL),
('Huguinho','49245421058','hugohuguinho@gmail.com','Santos','SP','Avenida','Senador Feijó','789',NULL),
('Luizinho','12455322009','lui@gmail.com','Praia Grande','SP','Rua','Londrina','1789',NULL),
('Zezinho','64363066091','zedoinho@gmail.com','São Vicente','SP','Rua','Frei Gaspar','1489','A'),
('Pardal','61955486000','pardalzinho@uol.com.br','Santos','SP','Rua','Alexandre Martins','100','B'),
('Zé Carioca','75976068006','omelhordobrasil@','Rio de Janeiro','RJ','Avenida','Copacabana','1000',NULL),
('Mickey','05270640090','oratomaisfamoso@hotmail.com','Recife','PE','Rua','Antônio Camilo Dias','81',NULL),
('Riley','05518857004','riley@hotmail.com','Santos','SP','Rua','Arabutan','84','apto 02')


INSERT INTO cliente
( nomeCliente, cpfCliente, email, cidade, estado, tipoLogradouro, nomeLogradouro, numero, complemento)
VALUES	
('Pão Duro Mac Money','05519957003','pdmmoney@ig.com','Osasco','SP','Avenida','Dos Autonomistas','874','apto 22')

/* EXERCICIO  03  - Inserir 10 clientes na tabela cliente*/

INSERT INTO cliente
( 
nomeCliente, 
cpfCliente,
email, 
cidade,
estado,
tipoLogradouro, 
nomeLogradouro,
numero,
complemento
)
VALUES	
('Minie','68183014010','miniminie@gmail.com','Recife','PE','Avenida','Boa Viagem','105',null),
('Pateta','01105576090','pateta26@gmail.com','São Vicente','SP','Avenida','Capitao Luiz Pimenta','1225',NULL),
('Branca Neve','55315414059','nevinha@hotmail.com','São Joaquim', 'SC','Rua','Almirante Lamego','475',NULL),
('Aladin','49345321058','aladin26@gmail.com','Bélem','PA','Rua','Senador Feijó','789',NULL),
('Cinderela','12455411009','cindy@hotmail.com','Goiania','GO','Avenida','Londrina','1789',NULL),
('Mulan','34663066091','mulanmundo@gmail.com','Rio das Ostras','RJ','Alameda','Frei Gaspar','1489','A'),
('Moana','61955485100','moaninha@gmail.com','Parati','RJ','Avenida','Doze','900','C'),
('Asnésio','30976068006','asnesizinho@uol.com','Belo Horizonte','MG','Rua','Das Flores','100',NULL),
('Maga Patalógica','15260640090','meguinhapat@gmail.com','Cubatão','SP','Rua','Quatorze','87',NULL),
('Capitao Boeing','12518857004','boeing26@uol.com.br','Manaus','AM','Rua','dos Andradas','194',NULL)
 
 
/* EXERCICIO  04  - Inserir 03 clientes na tabela funcionario*/
INSERT INTO funcionario
( nomeFuncionario, cpfFuncionario, celularFuncionario)
VALUES
('Cebolinha','23345567723','13944233212'),
('Cascão','33312245565','13977663311'),
('Chico Bento','12221145321','13988775543')


/* EXERCICIO  05  - Inserir 05 itens na tabela equipamento*/
INSERT INTO equipamento
(nomeEquipamento, qtd, valorHora)
VALUE
('Cadeiras 02 posições','50','2.00'),
('Cadeiras 04 podições','100','3.50'),
('Guarda Sol P','40','2.00'),
('Guarda Sol G','60','3.00'),
('Mesinha','30','1.50')

/* EXERCICIO  06  - Empréstimo de equipamento*/
 
INSERT INTO aluguel
(idCliente, idFuncionario, dataHoraRetirada,dataHoraDevolucao,valorAPagar, valorPago, pago, formaPagamento, qtVezes)
VALUES
(13,1,'2024-12-08 15:00:00','24-12-08 17:00','4.00','4.00','1','dinheiro',NULL)

/* atualizando estoque */ 
UPDATE equipamento
SET qtd=49
where idEquipamento =1
 
INSERT INTO aluguelequipamento
(idAluguelEquipamento, idEquipamento, idAluguel, valorItem, valorUnitario, qtd)
VALUES
('1','1','1','4.00','2.00','1')

/* EXERCICIO  07   - Empréstimo de equipamento */

INSERT INTO aluguel
(idCliente, idFuncionario, dataHoraRetirada,dataHoraDevolucao,valorAPagar, valorPago, pago, formaPagamento, qtVezes)
VALUES
('9','3','2024-12-10 15:00:00','24-12-10 19:00','28.00','28.00','1','pix',NULL),
('9','3','2024-12-10 15:00:00','24-12-10 19:00','12.00','12.00','1','pix',NULL)


/* atualizando estoque */
UPDATE equipamento
SET qtd=98
where idEquipamento=2
 
UPDATE equipamento
SET qtd=59
where idEquipamento=4

INSERT INTO aluguelequipamento
(idEquipamento, idAluguel, valorItem, valorUnitario, qtd)
VALUES
('2','2','28.00','3.50','2'),
('4','3','3.00','3.00','1')

/* EXERCICIO  08  - Empréstimo de equipamento*/

INSERT INTO aluguel
(idCliente, idFuncionario, dataHoraRetirada,dataHoraDevolucao,valorAPagar, valorPago, pago, formaPagamento, qtVezes)
VALUES
('2','1','2024-12-27 14:00:00','24-12-27 16:00','4.00','4.00','1','dinheiro',NULL)

/* atualizando estoque */
UPDATE equipamento
SET qtd=39
where idEquipamento=3

INSERT INTO aluguelequipamento
(idEquipamento, idAluguel, valorItem, valorUnitario, qtd)
VALUES
('3','4','4.00','2.00','1')

/* EXERCICIO  09  - Empréstimo de equipamento*/

/* Corrigindo dados da tabela equipamento*/
UPDATE equipamento
SET nomeEquipamento='Cadeiras 04 posições'
WHERE idEquipamento=2

INSERT INTO aluguel
(idCliente, idFuncionario, dataHoraRetirada,dataHoraDevolucao,valorAPagar, valorPago, pago, formaPagamento, qtVezes)
VALUES
('18','3','2024-12-28 13:00:00','24-12-28 16:00','21.00','21.00','1','crédito','1'),
('18','3','2024-12-28 13:00:00','24-12-28 16:00','9.00','9.00','1','crédito','1')



/* atualizando estoque */
UPDATE equipamento
SET qtd=96
where idEquipamento=2

UPDATE equipamento
SET qtd=58
where idEquipamento=4

INSERT INTO aluguelequipamento
(idEquipamento, idAluguel, valorItem, valorUnitario, qtd)
VALUES
('2','5','21.00','3.50','2'),
('4','6','9.00','3.00','1')

/* 10)Listar o nome e os contatos de todos os clientes da barraca em ordem alfabética. */
SELECT nomeCliente, email
FROM cliente
ORDER BY nomeCliente Asc

/* 11)Listar o nome e o contato telefônico de todos os funcionários da barraca em ordem alfabética. */
SELECT nomeFuncionario, celularFuncionario
FROM funcionario
ORDER BY nomeFuncionario ASC

/* 12)Listar todos os dados dos aluguéis realizados em ordem de data da mais antiga para a mais nova.*/

SELECT *
FROM aluguel
ORDER BY dataHoraRetirada ASC

/* 13)Listar nome, cidade e estado de todos os clientes da baixada santista em ordem alfabética por nome. */

SELECT nomeCliente, cidade, estado
FROM cliente
WHERE cidade IN (
    'Santos',
    'São Vicente',
    'Guarujá',
    'Praia Grande',
    'Cubatão',
    'Bertioga',
    'Itanhaém',
    'Mongaguá',
    'Peruíbe'
)
ORDER BY nomeCliente ASC


/* 14)Listar todos os produtos e a quantidade de estoque do produto que tem mais itens para o que tem menos. */
SELECT 
    nomeEquipamento,
    qtd
FROM equipamento
ORDER BY qtd DESC;


/* 15)Listar o nome, a cidade e o estado de todos os clientes que moram em casa em ordem alfabética. */
SELECT nomeCliente, cidade, estado
FROM cliente
WHERE complemento IS NULL
ORDER BY nomeCliente ASC;


/* 16)Listar o nome de todos os clientes e o estado daqueles que não vivem no estado de SP. */
SELECT nomeCliente, estado
FROM cliente
WHERE estado <> 'SP'

/* 17)Listar o nome de todos os clientes que começam com a letra A. */
SELECT *
FROM cliente
WHERE nomeCliente LIKE 'A%'


/* 18)Listar todos os dados dos clientes que começam com a letra M e vivam no estado de PE. */
SELECT *
FROM cliente
WHERE nomeCliente LIKE 'M%' AND estado='PE'


/*19)Listar apenas as cadeiras e a quantidade que possui em estoque em ordem de quantidade, da que mais possui itens para a que menos possui. */

SELECT nomeEquipamento, qtd
FROM equipamento
WHERE nomeEquipamento LIKE 'Cadeira%'
ORDER BY qtd DESC;

/* 20)Listar todos os dados dos alugueis que ocorreram entre 25/12 e 31/12 de 2024 em ordem de data da mais antiga para a mais nova.*/

SELECT * FROM aluguel

SELECT *
FROM aluguel
WHERE dataHoraRetirada BETWEEN '2024-12-25' AND '2024-12-31'
ORDER BY dataHoraRetirada ASC;


