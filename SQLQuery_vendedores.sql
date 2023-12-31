CREATE TABLE [TABELA DE VENDEDORES]
([MATRICULA] VARCHAR (5) NOT NULL,
[NOME] VARCHAR (100),
[CIDADE] VARCHAR (100),
[COMISSAO] FLOAT,
[DATA INICIO] DATE,
[DEPENDENTE] BIT);

ALTER TABLE [TABELA DE VENDEDORES] 
ADD CONSTRAINT PK_TABELA_DE_VENDEDORES
PRIMARY KEY CLUSTERED ([MATRICULA]);

INSERT INTO [TABELA DE VENDEDORES]
VALUES
('00123', 'Tainá Ramos', 'São Paulo', 0.20, '2022-05-01', '0')

INSERT INTO [TABELA DE VENDEDORES]
VALUES
('00124', 'Neto Gouveia', 'São Paulo', 0.05, '2022-07-01', '0'),
('00125', 'Roberto Ramos', 'Rio de Janeiro', 0.15, '2022-04-01', '1'),
('00126', 'André Mathias', 'São Paulo', 0.10, '2022-04-01', '0');

SELECT * FROM [TABELA DE VENDEDORES]

UPDATE [TABELA DE VENDEDORES]
SET [COMISSAO] = 0.11
WHERE [MATRICULA] = '00124';

UPDATE [TABELA DE VENDEDORES]
SET [NOME] = 'Roberto Nascimento'
WHERE [MATRICULA] = '00125';

DELETE[TABELA DE VENDEDORES]
WHERE [MATRICULA] = '00124' 

EXEC sp_rename 'TABELA DE VENDEDORES.COMISSAO', 'COMISSAO %', 'COLUMN';
-- renomear o nome da coluna

INSERT INTO [TABELA DE VENDEDORES]
VALUES
('00127', 'João da Silva','São Paulo', 0.06, '2022-12-01', 1),
('00128', 'Carolina Soares', 'Rio de Janeiro', 0.07, '2020-03-13', 1),
('00129', 'Juliana Marques', 'São Paulo', 0.09, '2018-11-14', 0),
('00130', 'Pedro Gomes', 'São Paulo', 0.08, '2019-01-20', 0),
('00131', 'Christina Rodrigues', 'Rio de Janeiro', 0.07,'2021-02-13',1);

SELECT * FROM [TABELA DE VENDEDORES]

SELECT [MATRICULA] AS [IDENTIFICADOR], [NOME] AS [NOME DO VENDEDOR] 
FROM [TABELA DE VENDEDORES]

SELECT * FROM [TABELA DE VENDEDORES]
WHERE [COMISSAO %] < 0.08