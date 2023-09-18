CREATE DATABASE db_Ecommerce;

USE db_Ecommerce;

CREATE TABLE tb_produtos(
    Id BIGINT IDENTITY(1,1),
	Nome VARCHAR(255) NOT NULL,
	Quantidade INT NOT NULL,
	Descricao VARCHAR(255),
	Marca VARCHAR(255),
	Preco DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO tb_produtos(Nome, Quantidade, Descricao, Marca, Preco) 
values 
	('Panela', 800, 'Panela top', 'Tramontina', 200.50),
	('Meias', 500, 'Meia top', 'Nike', 49.99),
	('Livro', 100, 'Para todos os garotos que já amei', 'Panini', 99.99),
	('Fone de ouvido', 2000, 'Fone de ouvido top', 'Philco', 79.99),
	('Carregador', 800, 'Carregador top', 'Motorola', 129.99),
	('CaraCara', 100, 'Jogo top', 'Estrela', 49.99),
	('Mouse', 60, 'Mouse Top', 'Peining', 29.99),
	('Celular', 2500, 'Celular', 'Motorola', 999.99);
	

SELECT * FROM tb_produtos WHERE Preco > 500;

SELECT * FROM tb_produtos WHERE Preco < 500;

UPDATE tb_produtos SET Preco = 599.99 WHERE Id = 4;
