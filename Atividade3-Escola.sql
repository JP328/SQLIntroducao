CREATE DATABASE db_Escola;

USE db_Escola;

CREATE TABLE tb_notas(
    Id BIGINT IDENTITY(1,1),
	Nome VARCHAR(255) NOT NULL,
	Nota DECIMAL(6,1) NOT NULL,
	Sala VARCHAR(255) NOT NULL,
	Serie VARCHAR(255) NOT NULL,
	Responsavel VARCHAR(255) NOT NULL,	
    PRIMARY KEY (id)
);

INSERT INTO tb_notas(Nome, Nota, Sala, Serie, Responsavel) 
values 
	('Lucas', 8.5, 'Sala 11', '9 ano', 'José Ricardo'),
	('João', 5.5, 'Sala 11', '9 ano', 'Maria'),
	('Shomara', 7.5, 'Sala 11', '9 ano', 'Sheldon'),
	('Karina', 10.0, 'Sala 11', '9 ano', 'Bruce Waine'),
	('Pedro', 6.5, 'Sala 11', '9 ano', 'Jean Gray'),
	('Júnior', 7.2, 'Sala 11', '9 ano', 'Louis'),
	('Carla', 2.0, 'Sala 11', '9 ano', 'Tony Esterco'),
	('Ingrid', 9.0, 'Sala 11', '9 ano', 'Tomas');


SELECT * FROM tb_notas WHERE Nota > 7.0;

SELECT * FROM tb_notas WHERE Nota < 7.0;

UPDATE tb_notas SET Nota = 10.0 WHERE Id = 2;


