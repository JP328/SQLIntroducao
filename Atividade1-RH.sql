CREATE DATABASE db_RecursosHumanos;


USE db_RecursosHumanos;

CREATE TABLE tb_funcionarios(
    Id BIGINT IDENTITY(1,1),
	Nome VARCHAR(255) NOT NULL,
	CPF VARCHAR(255) NOT NULL,
	Cargo VARCHAR(255) NOT NULL,
    DataDeEntrada DATE NOT NULL,
	Salario DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO tb_funcionarios(Nome, CPF, Cargo, DataDeEntrada, Salario) 
values 
	('João', '000.000.000-00', 'programador', '2023-12-15', 2000.50),
	('Shomara', '000.000.000-00', 'RH', '2023-12-15', 3250.50),
	('Karina', '000.000.000-00', 'programador', '2023-12-15', 1800.50),
	('Lucas', '000.000.000-00', 'Marketing', '2023-12-15', 1900.80),
	('Pedro', '000.000.000-00', 'Gerente', '2023-12-15', 5050.90);


SELECT * FROM tb_funcionarios WHERE Salario > 2000;

SELECT * FROM tb_funcionarios WHERE Salario < 2000;

UPDATE tb_funcionarios SET Cargo = 'Programador Sênior' WHERE Id = 1;
