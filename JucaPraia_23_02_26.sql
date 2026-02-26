/* EXERCICIO 01 */
ALTER TABLE cliente ADD (
 email VARCHAR(255) NOT NULL, cidade VARCHAR(50) NOT null,estado CHAR(2) NOT null, tipoLogradouro VARCHAR (15) NOT NULL,
 nomeLogradouro VARCHAR(60) NOT NULL, numero VARCHAR(6) NOT NULL,complemento VARCHAR(30)
)

SELECT * FROM cliente

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
( nomeCliente, cpfCliente, email, cidade, estado, tipoLogradouro, nomeLogradouro, numero, complemento)
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

SELECT * FROM funcionario

INSERT INTO funcionario
( nomeFuncionario, cpfFuncionario, celularFuncionario)
VALUES
('Cebolinha','23345567723','13944233212'),
('Cascão','33312245565','13977663311'),
('Chico Bento','12221145321','13988775543')


/* EXERCICIO  05  - Inserir 05 itens na tabela equipamento*/
SELECT * FROM equipamento

INSERT INTO equipamento
(nomeEquipamento, qtd, valorHora)
VALUE
('Cadeiras 02 posições','50','2.00'),
('Cadeiras 04 podições','100','3.50'),
('Guarda Sol P','40','2.00'),
('Guarda Sol G','60','3.00'),
('Mesinha','30','1.50')


/* EXERCICIO  06  - Empréstimo de equipamento*/

SELECT * FROM aluguel

INSERT INTO aluguel
(idCliente, idFuncionario, dataHoraRetirada,dataHoraDevolucao,valorAPagar, valorPago, pago, formaPagamento, qtVezes)
VALUES
(22,1,'2024-12-08 15:00:00','24-12-08 17:00','4.00','4.00','S','dinheiro',NULL)



UPDATE equipamento
SET qtd=49
where idEquipamento =1

/* EXERCICIO  07  - Inserir 05 itens na tabela equipamento*/

INSERT INTO aluguel
(idCliente, idFuncionario, dataHoraRetirada,dataHoraDevolucao,valorAPagar, valorPago, pago, formaPagamento, qtVezes)
VALUES
(9,3,'2024-12-10 15:00:00','24-12-10 19:00','14.00','14.00','S','pix',NULL)


INSERT INTO aluguel
(idCliente, idFuncionario, dataHoraRetirada,dataHoraDevolucao,valorAPagar, valorPago, pago, formaPagamento, qtVezes)
VALUES
(9,3,'2024-12-10 15:00:00','24-12-10 19:00','14.00','14.00','S','pix',NULL)



UPDATE equipamento
SET qtd=
where idEquipamento =1
