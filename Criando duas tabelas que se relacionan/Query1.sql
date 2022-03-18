CREATE database db_estoque; -- Crando o banco de dados

USE db_estoque;  -- Informando qual BD usar

CREATE table tb_marcas( -- Criando a tabela das marcas com suas colunas
	id bigint(5) auto_increment,
    nome varchar(20) not null, -- variavel tipo string de ate 20 caracter e ele nao pode ser nulo
	ativo boolean,
    primary key(id)
);

SELECT * FROM tb_marcas; -- Consultando todos os dados da tabela

-- Populando a tabela
INSERT INTO tb_marcas (nome, ativo) VALUES ("Nike", true);
INSERT INTO tb_marcas (nome, ativo) VALUES ("Adidas", true);
INSERT INTO tb_marcas (nome, ativo) VALUES ("H&M", true);
INSERT INTO tb_marcas (nome, ativo) VALUES ("zara", false);
INSERT INTO tb_marcas (nome, ativo) VALUES ("Louis Vuitton", true);
INSERT INTO tb_marcas (nome, ativo) VALUES ("Uniqlo", true);
INSERT INTO tb_marcas (nome, ativo) VALUES ("Hermès", true);
INSERT INTO tb_marcas (nome, ativo) VALUES ("Rolex", true);

-- Modificar dados da tabela
UPDATE tb_marcas SET nome = "Zara", ativo = true 
	WHERE id = 2;
    
-- Deletar dados da tabela
DELETE FROM tb_marcas WHERE id =  7;



-- Criando a seggunda tabela
CREATE table tb_produto(
	id bigint auto_increment,
    nome varchar(50) not null,
    preco decimal(10,2), -- No parenteses nos definimos as quantidades de casa antes e depos da virgula
    marca_id bigint not null,
    
    primary key(id),
    foreign key(marca_id) references tb_marcas (id) -- A marcar_id vai receber dados a aprtir de um paremetro que e o id das marcas
);

SELECT * FROM tb_produto;

-- Inserir valores na tabela produtos
INSERT INTO tb_produto (nome,preco,marca_id) VALUES ("Sapato","60.53",1);
INSERT INTO tb_produto (nome,preco,marca_id) VALUES ("Camisa","58.18",8);
INSERT INTO tb_produto (nome,preco,marca_id) VALUES ("Meias","83.50",4);
INSERT INTO tb_produto (nome,preco,marca_id) VALUES ("Meias","92.81",3);
INSERT INTO tb_produto (nome,preco,marca_id) VALUES ("Blusa","76.95",5);
INSERT INTO tb_produto (nome,preco,marca_id) VALUES ("Tênis","96.56",4);
INSERT INTO tb_produto (nome,preco,marca_id) VALUES ("Sapato","61.16",8);
INSERT INTO tb_produto (nome,preco,marca_id) VALUES ("Sapato","73.08",4);
INSERT INTO tb_produto (nome,preco,marca_id) VALUES ("Meias","53.45",6);
INSERT INTO tb_produto (nome,preco,marca_id) VALUES ("Camisa","56.92",3);
INSERT INTO tb_produto (nome,preco,marca_id) VALUES ("Blusa","81.02",8);
INSERT INTO tb_produto (nome,preco,marca_id) VALUES ("Meias","90.09",2);