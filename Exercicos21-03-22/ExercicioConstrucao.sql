/*Atividade 5

Crie um banco de dados para um serviço de uma loja de produtos de construção, o nome
do banco deverá ter o seguinte nome db_construindo_a_nossa_vida, onde o sistema
trabalhará com as informações dos produtos desta empresa.

O sistema trabalhará com 2 tabelas tb_produto e tb_categoria.

Siga exatamente esse passo a passo:

Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos
relevantes do tb_categoria para se trabalhar com o serviço deste ecommerce.

Crie uma tabela de tb_produto e utilize a habilidade de abstração e determine 5 atributos
relevantes dos tb_produto para se trabalhar com o serviço de uma loja de produtos (não
esqueça de criar a foreign key de tb_categoria nesta tabela).

Popule esta tabela Categoria com até 5 dados.

Popule esta tabela Produto com até 8 dados.

Faça um select que retorne os Produtos com o valor maior do que 50 reais.

Faça um select trazendo os Produtos com valor entre 3 e 60 reais.

Faça um select utilizando LIKE buscando os Produtos com a letra C.

Faça um um select com Inner join entre tabela categoria e produto.

Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos
os produtos que são da categoria hidráulica).

Salve as querys para cada uma dos requisitos do exercício em um arquivo .SQL ou texto e
coloque no seu GitHuB pessoal e compartilhe esta atividade.*/

CREATE DATABASE db_construindo_a_nossa_vida;

USE db_construindo_a_nossa_vida;

CREATE TABLE tb_categoria(
	id BIGINT AUTO_INCREMENT,
    categoria varchar(255),
    subCategoria varchar(255),
	promocao boolean,
    
    primary key(id)
);

INSERT INTO tb_categoria(categoria, subCategoria, promocao) VALUES ("Pisos e revestimentos", "Argamassas", false);
INSERT INTO tb_categoria(categoria, subCategoria, promocao) VALUES ("Pisos e revestimentos", "Piso", false);
INSERT INTO tb_categoria(categoria, subCategoria, promocao) VALUES ("Pisos e revestimentos", "revestimento", false);
INSERT INTO tb_categoria(categoria, subCategoria, promocao) VALUES ("Área Externa", "Jardin", false);
INSERT INTO tb_categoria(categoria, subCategoria, promocao) VALUES ("Portas e Janelas", "Porta", false);


SELECT * FROM tb_categoria;

CREATE TABLE tb_produto(
	id BIGINT AUTO_INCREMENT,
    nome varchar(255),
    tipo bigint,
    estoque boolean,
    quantidade int,
    preco int,
    entrega boolean,
    categoria_id bigint,
    
    primary key(id),
    foreign key(categoria_id) references tb_categoria(id) -- Esse comando vai faz o link com a outra tabela
);

INSERT INTO tb_produto(nome, tipo, estoque, quantidade, preco, entrega, categoria_id) VALUES ("porselanato", "a", true, 250, 250, true, 2);
INSERT INTO tb_produto(nome, tipo, estoque, quantidade, preco, entrega, categoria_id) VALUES ("porselanato", "b", true, 500, 200, true, 2);
INSERT INTO tb_produto(nome, tipo, estoque, quantidade, preco, entrega, categoria_id) VALUES ("porselanato", "c", true, 500, 150, true, 2);
INSERT INTO tb_produto(nome, tipo, estoque, quantidade, preco, entrega, categoria_id) VALUES ("Porta madeira", "siples", true, 55, 340, true, 5);
INSERT INTO tb_produto(nome, tipo, estoque, quantidade, preco, entrega, categoria_id) VALUES ("Porta aluminio", "prime", true, 15, 400, true, 5);
INSERT INTO tb_produto(nome, tipo, estoque, quantidade, preco, entrega, categoria_id) VALUES ("Porta madeira", "prime", true, 10, 550, true, 5);
INSERT INTO tb_produto(nome, tipo, estoque, quantidade, preco, entrega, categoria_id) VALUES ("cerca de arrame", "prime", true, 22, 22, true, 4);
INSERT INTO tb_produto(nome, tipo, estoque, quantidade, preco, entrega, categoria_id) VALUES ("cerca de plastico", "prime", true, 22, 60, true, 3);

SELECT * FROM tb_produto WHERE preco > 50;
SELECT * FROM tb_produto WHERE preco >= 3 AND preco <= 60;
SELECT * FROM tb_produto WHERE nome LIKE "%b%";

SELECT * FROM tb_produto INNER JOIN tb_categoria ON tb_produto.categoria_id = tb_categoria.id;
SELECT * FROM tb_produto INNER JOIN tb_categoria ON tb_produto.categoria_id = tb_categoria.id WHERE categoria LIKE "Pisos e revestimentos";