/*Atividade 4

Crie um banco de dados para um serviço de um açougue ou uma quitanda, o nome do
banco deverá ter o seguinte nome db_cidade_das_carnes ou db_cidade_das_frutas, onde o
sistema trabalhará com as informações dos produtos desta empresa.

O sistema trabalhará com 2 tabelas tb_produto e tb_categoria.

siga exatamente esse passo a passo:

Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos
relevantes do tb_categoria para se trabalhar com o serviço desse açougue.

Crie uma tabela de tb_produto e utilize a habilidade de abstração e determine 5 atributos
relevantes dos tb_produto para se trabalhar com o serviço desse açougue(não esqueça de
criar a foreign key de tb_categoria nesta tabela).

Popule esta tabela Categoria com até 5 dados.

Popule esta tabela Produto com até 8 dados.

Faça um select que retorne os Produtos com o valor maior do que 50 reais.

Faça um select trazendo os Produtos com valor entre 3 e 60 reais.

Faça um select utilizando LIKE buscando os Produtos com a letra C.

Faça um um select com Inner join entre tabela categoria e produto.

Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos
os produtos que são aves ou legumes).

Salve as querys para cada uma dos requisitos do exercício em um arquivo .SQL ou texto e
coloque no seu GitHuB pessoal e compartilhe esta atividade.*/

CREATE DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes;

CREATE TABLE tb_categoria(
	id BIGINT AUTO_INCREMENT,
    categoria varchar(255),
    tipo varchar(255),
	promocao boolean,
    
    primary key(id)
);

INSERT INTO tb_categoria(categoria, tipo, promocao) VALUES ("carne bovina", "a", false);
INSERT INTO tb_categoria(categoria, tipo, promocao) VALUES ("carne bovina", "b", false);
INSERT INTO tb_categoria(categoria, tipo, promocao) VALUES ("carne suina", "a", false);
INSERT INTO tb_categoria(categoria, tipo, promocao) VALUES ("carne suina", "b", false);
INSERT INTO tb_categoria(categoria, tipo, promocao) VALUES ("carne avina", "a", false);
INSERT INTO tb_categoria(categoria, tipo, promocao) VALUES ("carne avina", "b", false);

SELECT * FROM tb_categoria;

CREATE TABLE tb_produto(
	id BIGINT AUTO_INCREMENT,
    corte varchar(255),
    peso bigint,
    estoque boolean,
    quantidade int,
    preco int,
    entrega boolean,
    categoria_id bigint,
    
    primary key(id),
    foreign key(categoria_id) references tb_categoria(id) -- Esse comando vai faz o link com a outra tabela
);

INSERT INTO tb_produto(corte, peso, estoque, quantidade, preco, entrega, categoria_id) VALUES ("maminha", 50, true, 4, 45, true, 1);
INSERT INTO tb_produto(corte, peso, estoque, quantidade, preco, entrega, categoria_id) VALUES ("fraudinha", 45, true, 5, 30, true, 2);
INSERT INTO tb_produto(corte, peso, estoque, quantidade, preco, entrega, categoria_id) VALUES ("costela", 60, true, 10, 60, true, 1);
INSERT INTO tb_produto(corte, peso, estoque, quantidade, preco, entrega, categoria_id) VALUES ("assinha", 50, true, 22, 65, true, 6);
INSERT INTO tb_produto(corte, peso, estoque, quantidade, preco, entrega, categoria_id) VALUES ("coxa", 50, true, 22, 40, true, 5);
INSERT INTO tb_produto(corte, peso, estoque, quantidade, preco, entrega, categoria_id) VALUES ("sobrecoxa", 50, true, 22, 33, true, 5);
INSERT INTO tb_produto(corte, peso, estoque, quantidade, preco, entrega, categoria_id) VALUES ("costela", 50, true, 22, 30, true, 3);
INSERT INTO tb_produto(corte, peso, estoque, quantidade, preco, entrega, categoria_id) VALUES ("bife", 50, true, 22, 60, true, 3);

SELECT * FROM tb_produto WHERE preco > 50;
SELECT * FROM tb_produto WHERE preco >= 3 AND preco <= 60;
SELECT * FROM tb_produto WHERE nome LIKE "%b%";

SELECT * FROM tb_produto INNER JOIN tb_categoria ON tb_produto.categoria_id = tb_categoria.id;
SELECT * FROM tb_produto INNER JOIN tb_categoria ON tb_produto.categoria_id = tb_categoria.id WHERE categoria LIKE "carne bovina";