/*Atividade 2
Crie um banco de dados para um serviço de pizzaria de uma empresa, o nome do banco
deverá ter o seguinte nome db_pizzaria_legal, onde o sistema trabalhará com as
informações dos produtos desta empresa.

O sistema trabalhará com 2 tabelas tb_pizza e tb_categoria.

siga exatamente esse passo a passo:

Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos
relevantes do tb_categoria para se trabalhar com o serviço dessa pizzaria.

Crie uma tabela de tb_pizza e utilizando a habilidade de abstração e determine 5 atributos
relevantes dos tb_produto para se trabalhar com o serviço dessa pizzaria(não esqueça de
criar a foreign key de tb_categoria nesta tabela).

Popule esta tabela Categoria com até 5 dados.

Popule esta tabela pizza com até 8 dados.

Faça um select que retorne os Produtos com o valor maior do que 45 reais.

Faça um select trazendo os Produtos com valor entre 29 e 60 reais.

Faça um select utilizando LIKE buscando os Produtos com a letra C.

Faça um um select com Inner join entre tabela categoria e pizza.

Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos
os produtos que são pizza doce).
salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e
coloque no seu GitHuB pessoal e compartilhe esta atividade.*/

CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categoria(
	id BIGINT AUTO_INCREMENT,
    categoria varchar(255),
    tipo varchar(255),
    disponivel boolean,
    
    primary key(id)
);

SELECT * FROM tb_categoria;

INSERT INTO tb_categoria(categoria, tipo, disponivel) VALUES ("Pizza", "Salgada", true);
INSERT INTO tb_categoria(categoria, tipo, disponivel) VALUES ("Pizza", "Salgada", false);
INSERT INTO tb_categoria(categoria, tipo, disponivel) VALUES ("Pizza", "Doce", true);
INSERT INTO tb_categoria(categoria, tipo, disponivel) VALUES ("Pizza", "Doce", false);
INSERT INTO tb_categoria(categoria, tipo, disponivel) VALUES ("Pizza", "Vegana", true);
INSERT INTO tb_categoria(categoria, tipo, disponivel) VALUES ("Pizza", "Vegana", false);

CREATE TABLE tb_pizza(
	id BIGINT AUTO_INCREMENT,
    nome varchar(255),
    preco int,
    preAssada boolean,
    quantidade int,
    tamanho int,
    disponivel boolean,
    categoria_id bigint,
    
    primary key(id),
    foreign key(categoria_id) references tb_categoria(id) -- Esse comando vai faz o link com a outra tabela
);

SELECT * FROM tb_pizza;

INSERT INTO tb_pizza(nome, preco, preAssada, quantidade, tamanho, disponivel, categoria_id) VALUES ("Portuguesa", 55, true, 1, 3, true, 1);
INSERT INTO tb_pizza(nome, preco, preAssada, quantidade, tamanho, disponivel, categoria_id) VALUES ("Frango", 35, true, 1, 2, true, 1);
INSERT INTO tb_pizza(nome, preco, preAssada, quantidade, tamanho, disponivel, categoria_id) VALUES ("Lombinho", 31, true, 2, 3, true, 1);
INSERT INTO tb_pizza(nome, preco, preAssada, quantidade, tamanho, disponivel, categoria_id) VALUES ("Brigadeiro", 44, false, 2, 2, true, 3);
INSERT INTO tb_pizza(nome, preco, preAssada, quantidade, tamanho, disponivel, categoria_id) VALUES ("MorangoNutella", 44, false, 5, 2, true, 3);
INSERT INTO tb_pizza(nome, preco, preAssada, quantidade, tamanho, disponivel, categoria_id) VALUES ("Frango", 23, true, 2, 3, true, 5);
INSERT INTO tb_pizza(nome, preco, preAssada, quantidade, tamanho, disponivel, categoria_id) VALUES ("Lombinho", 46, true, 1, 2, true, 5);

SELECT * FROM tb_pizza WHERE preco > 45;
SELECT * FROM tb_pizza WHERE preco >= 29 AND preco <= 60;
SELECT * FROM tb_pizza WHERE nome LIKE "%c%";

SELECT * FROM tb_pizza INNER JOIN tb_categoria ON tb_pizza.categoria_id = tb_categoria.id;
SELECT * FROM tb_pizza INNER JOIN tb_categoria ON tb_pizza.categoria_id = tb_categoria.id WHERE tipo LIKE "Doce";