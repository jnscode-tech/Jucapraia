/* Mostra tabelas existentes no BD */
SHOW TABLES;

/* Buscar dados em determinada tabela*/
SELECT * FROM cliente

SELECT nomeCliente, celular, email  FROM cliente

/* Inserir dados */
INSERT INTO cliente
( nomeCliente, cpf, celular, email, cidade, estado, cep,
tipoLogradouro, nomeLogradouro, numero, complemento)
VALUES	
('Juquinha Simões','81512039004','995559989','jucasimoes@uol.com.br','Santos','SP','1107788','Rua','das Margaridas','50','ap.51'),
('Marizinha Simões','05003235003','993339799','mariasimoes@bol.com.br', 'Santos','SP','11077888','Rua','das Margaridas','50','ap. 51');

DELETE FROM cliente


/* Atualizar dados em determinada tabela - sempre com where */
UPDATE  cliente
SET celular = '13988776655'
WHERE idCliente=3

UPDATE  cliente
SET celular = '13988776855'
WHERE idCliente=4



INSERT INTO cliente
( nomeCliente, cpf, celular, email, cidade, estado, cep,
tipoLogradouro, nomeLogradouro, numero, complemento)
VALUES	
('Camila Sena','92512039004','21935559989','milasena@icloud.com','Nitori','RJ','1207788','Rua','das Meninas','55','ap.00'),
('Thiago Gonçcalves','45003235003','13994439799','thiaguinho@outlook.com.br', 'Cubatao','SP','127751','Av','9 de abril','59','ap. 02');

/* Atualizar duas informações de qualquer cliente: celular e email
 */
UPDATE  cliente
SET celular = '11988776855', email = 'mariazinha123@uol.com.br'
WHERE idCliente=4


/* Busca com filtros */
SELECT nomeCliente, email, cidade, estado FROM cliente
WHERE cidade='Santos'


SELECT nomeCliente, email, cidade FROM cliente
WHERE cidade='Santos' OR cidade ='Cubatao'

/* busca ordenada */
SELECT nomeCliente, email, cidade FROM cliente
ORDER BY nomeCliente	DESC

SELECT nomeCliente, email, cidade FROM cliente
ORDER BY nomeCliente	ASC

/* Trazer os clientes de SP em ordem alfabetica por nome de A a Z*/
SELECT nomeCliente, email, cidade, estado FROM cliente
WHERE estado='SP'
ORDER BY nomeCliente

/*Excluir dados de determinada tabela */

DELETE FROM cliente
WHERE estado='SP'

DELETE FROM cliente
WHERE cidade='Santos' OR cicdade='Rio de Janeiro'

DELETE FROM cliente
WHERE idCliente>6 AND idCliente <10

DELETE FROM cliente
WHERE idCliente=3


SELECT * FROM cliente

SELECT idCliente, nomeCliente FROM cliente
WHERE idCliente>=3 AND idCliente<=15

SELECT nomeCliente FROM cliente
WHERE nomeCliente = 'Ju'

SELECT nomeCliente FROM cliente
WHERE nomeCliente LIKE 'Ju%'

SELECT nomeCliente FROM cliente
WHERE nomeCliente LIKE '%inha%'


