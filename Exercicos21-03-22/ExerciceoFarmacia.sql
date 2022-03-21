/*Atividade 3
Crie um banco de dados para um serviço de farmácia de uma empresa, o nome do banco
deverá ter o seguinte nome db_farmacia_do_bem, onde o sistema trabalhará com as
informações dos produtos desta empresa.

O sistema trabalhará com 2 tabelas tb_produto e tb_categoria.

siga exatamente esse passo a passo:

Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos
relevantes do tb_categoria para se trabalhar com o serviço desta farmacia.

Crie uma tabela de tb_produto e utilizando a habilidade de abstração e determine 5
atributos relevantes dos tb_produto para se trabalhar com o serviço deste farmacia(não
esqueça de criar a foreign key de tb_categoria nesta tabela).

Popule esta tabela Categoria com até 5 dados.

Popule esta tabela Produto com até 8 dados.

Faça um select que retorne os Produtos com o valor maior do que 50 reais.

Faça um select trazendo os Produtos com valor entre 3 e 60 reais.

Faça um select utilizando LIKE buscando os Produtos com a letra B.

Faça um um select com Inner join entre tabela categoria e produto.

Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos
os produtos que são cosméticos).
salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e
coloque no seu GitHuB pessoal e compartilhe esta atividade.*/

CREATE DATABASE db_farmacia_do_bem;

USE db_farmacia_do_bem;

CREATE TABLE tb_categoria(
	id BIGINT AUTO_INCREMENT,
    categoria varchar(255),
    subCategoria varchar(255),
	promocao boolean,
    
    primary key(id)
);

SELECT * FROM tb_categoria;

INSERT INTO tb_categoria(categoria, subCategoria, promocao) VALUES ("midicamentos", "Injetáveis", false);
INSERT INTO tb_categoria(categoria, subCategoria, promocao) VALUES ("midicamentos", "Injetáveis", true);
INSERT INTO tb_categoria(categoria, subCategoria, promocao) VALUES ("midicamentos", "Via Oral", false);
INSERT INTO tb_categoria(categoria, subCategoria, promocao) VALUES ("midicamentos", "Via Oral", true);

CREATE TABLE tb_produto(
	id BIGINT AUTO_INCREMENT,
    nome varchar(255),
    numero bigint,
    estoque boolean,
    quantidade int,
    preco int,
    entrega boolean,
    categoria_id bigint,
    
    primary key(id),
    foreign key(categoria_id) references tb_categoria(id) -- Esse comando vai faz o link com a outra tabela
);

INSERT INTO tb_produto(nome, numero, estoque, quantidade, preco, entrega, categoria_id) VALUES ("Diprospan", 27856, true, 22, 32.66, true, 1);
INSERT INTO tb_produto(nome, numero, estoque, quantidade, preco, entrega, categoria_id) VALUES ("Insulina", 5267, true, 32, 85.95, true, 2);
INSERT INTO tb_produto(nome, numero, estoque, quantidade, preco, entrega, categoria_id) VALUES ("Atesto", 3765, true, 5, 286.11, true, 1);
INSERT INTO tb_produto(nome, numero, estoque, quantidade, preco, entrega, categoria_id) VALUES ("Benzetacil", 8597, true, 10, 14.50, true, 1);
INSERT INTO tb_produto(nome, numero, estoque, quantidade, preco, entrega, categoria_id) VALUES ("Venvanse", 326, true, 15, 331.95, true, 3);
INSERT INTO tb_produto(nome, numero, estoque, quantidade, preco, entrega, categoria_id) VALUES ("Roacutan", 3768, true, 70, 146.03, true, 4);
INSERT INTO tb_produto(nome, numero, estoque, quantidade, preco, entrega, categoria_id) VALUES ("Dramin", 8635, true, 100, 9.74, true, 4);
INSERT INTO tb_produto(nome, numero, estoque, quantidade, preco, entrega, categoria_id) VALUES ("Annita", 8341, true, 150, 48.99, true, 4);

SELECT * FROM tb_produto;

SELECT * FROM tb_produto WHERE preco > 50;
SELECT * FROM tb_produto WHERE preco >= 3 AND preco <= 60;
SELECT * FROM tb_produto WHERE nome LIKE "%b%";

SELECT * FROM tb_produto INNER JOIN tb_categoria ON tb_produto.categoria_id = tb_categoria.id;
SELECT * FROM tb_produto INNER JOIN tb_categoria ON tb_produto.categoria_id = tb_categoria.id WHERE categoria LIKE "midicamentos";