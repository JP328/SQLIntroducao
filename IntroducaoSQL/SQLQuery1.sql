CREATE DATABASE db_quitanda;

USE db_quitanda;

CREATE TABLE tb_produtos(
    Id BIGINT IDENTITY(1,1),
	Nome VARCHAR(255) NOT NULL,
	Quantidade INT,
    DataValidade DATE,
	Preco DECIMAL NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO tb_produtos(Nome, Quantidade, DataValidade, Preco) 
values ('Tomate', 100, '2023-12-15', 8.55),
('Maçã', 20, '2023-12-15', 5.00),
('Laranja', 50, '2023-12-15', 9.99),
('Banana', 200, '2023-12-15', 12.00),
('Uva', 1200, '2023-12-15', 30.50),
('Pêra', 500, '2023-12-15', 3.99);

INSERT INTO tb_produtos(Nome, Quantidade, DataValidade, Preco) 
values ('Milho', 80, '2023-12-15', 9.95);


SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE Nome = 'Banana';

SELECT Nome, Preco FROM tb_produtos;

SELECT * FROM tb_produtos WHERE id = 1 OR id = 2 OR id = 3;

SELECT * FROM tb_produtos WHERE Preco > 5.00;

SELECT * FROM tb_produtos WHERE Preco > 5.00 AND Quantidade < 100;


ALTER TABLE tb_produtos ALTER COLUMN Preco DECIMAL(10,2);

ALTER TABLE tb_produtos ADD Descricao VARCHAR(255);


UPDATE tb_produtos SET Preco = 3.99 WHERE Id = 6;

-- ctrl + shift + R para atualizar o documento
UPDATE tb_produtos SET Descricao = 'Tomate Italiano' WHERE Id = 1;
UPDATE tb_produtos SET Descricao = 'Maçã Verde' WHERE Id = 2;
UPDATE tb_produtos SET Descricao = 'Laranja Lima' WHERE Id = 3;
UPDATE tb_produtos SET Descricao = 'Banana Prata' WHERE Id = 4;
UPDATE tb_produtos SET Descricao = 'Uva Italiana' WHERE Id = 5;
UPDATE tb_produtos SET Descricao = 'Pêra Williams' WHERE Id = 6;
UPDATE tb_produtos SET Descricao = 'Milho verde' WHERE Id = 7;


ALTER TABLE tb_produtos DROP COLUMN Descricao;

DELETE FROM tb_produtos WHERE Id = 2;

DROP TABLE tb_produtos;


