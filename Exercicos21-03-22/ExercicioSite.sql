/*Atividade 6

Crie um banco de dados para um serviço de um site de cursos onlines, o nome do banco
deverá ter o seguinte nome db_cursoDaMinhaVida, onde o sistema trabalhará com as
informações dos produtos desta empresa.

O sistema trabalhará com 2 tabelas tb_curso e tb_categoria.

siga exatamente esse passo a passo:

Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos
relevantes do tb_categoria para se trabalhar com o serviço deste site de cursos onlines.

Crie uma tabela de tb_produto e utilizando a habilidade de abstração e determine 5
atributos relevantes dos tb_produto para se trabalhar com o serviço de um site de cursos
onlines(não esqueça de criar a foreign key de tb_categoria nesta tabela).

Popule esta tabela Categoria com até 5 dados.

Popule esta tabela Produto com até 8 dados.

Faça um select que retorne os Produtos com o valor maior do que 50 reais.

Faça um select trazendo os Produtos com valor entre 3 e 60 reais.

Faça um select utilizando LIKE buscando os Produtos com a letra J.

Faça um um select com Inner join entre tabela categoria e produto.

Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos
os produtos que são da categoria Java).

Salve as querys para cada uma dos requisitos do exercício em um arquivo .SQL ou texto e
coloque no seu GitHuB pessoal e compartilhe esta atividade.*/

CREATE DATABASE db_construindo_a_nossa_vida;

USE db_construindo_a_nossa_vida;

CREATE TABLE tb_categoria(
	id BIGINT AUTO_INCREMENT,
    categoria varchar(255),
    marca varchar(255),
	promocao boolean,
    
    primary key(id)
);

INSERT INTO tb_categoria(categoria, marca, promocao) VALUES ("java", "nintendo", false);
INSERT INTO tb_categoria(categoria, marca, promocao) VALUES ("java", "sony", false);
INSERT INTO tb_categoria(categoria, marca, promocao) VALUES ("c++", "nintendo", false);
INSERT INTO tb_categoria(categoria, marca, promocao) VALUES ("c++", "sony", false);
INSERT INTO tb_categoria(categoria, marca, promocao) VALUES ("swift", "apple", false);


SELECT * FROM tb_categoria;

SELECT * FROM tb_curso;

CREATE TABLE tb_curso(
	id BIGINT AUTO_INCREMENT,
    nome varchar(255),
    tipo varchar(255),
    estoque boolean,
    quantidade int,
    preco int,
    entrega boolean,
    categoria_id bigint,
    
    primary key(id),
    foreign key(categoria_id) references tb_categoria(id) -- Esse comando vai faz o link com a outra tabela
);



INSERT INTO tb_curso(nome, tipo, estoque, quantidade, preco, entrega, categoria_id) VALUES ("super mario", "plataforma", true, 250, 55, true, 1);
INSERT INTO tb_curso(nome, tipo, estoque, quantidade, preco, entrega, categoria_id) VALUES ("finalfantase", "rpg", true, 500, 45, true, 2);
INSERT INTO tb_curso(nome, tipo, estoque, quantidade, preco, entrega, categoria_id) VALUES ("assassins creed", "aventura", true, 500, 30, true, 2);
INSERT INTO tb_curso(nome, tipo, estoque, quantidade, preco, entrega, categoria_id) VALUES ("zelda", "estrategia", true, 55, 60, true, 3);
INSERT INTO tb_curso(nome, tipo, estoque, quantidade, preco, entrega, categoria_id) VALUES ("portal", "estrategia", true, 15, 50, true, 5);
INSERT INTO tb_curso(nome, tipo, estoque, quantidade, preco, entrega, categoria_id) VALUES ("god of war", "aventura", true, 10, 55, true, 2);
INSERT INTO tb_curso(nome, tipo, estoque, quantidade, preco, entrega, categoria_id) VALUES ("litter big planet", "terro", true, 22, 60, true, 4);
INSERT INTO tb_curso(nome, tipo, estoque, quantidade, preco, entrega, categoria_id) VALUES ("kirby", "rpg", true, 22, 55, true, 3);

SELECT * FROM tb_curso;

SELECT * FROM tb_curso WHERE preco > 50;
SELECT * FROM tb_curso WHERE preco >= 3 AND preco <= 60;
SELECT * FROM tb_curso WHERE nome LIKE "%j%";

SELECT * FROM tb_curso INNER JOIN tb_categoria ON tb_curso.categoria_id = tb_categoria.id;
SELECT * FROM tb_curso INNER JOIN tb_categoria ON tb_curso.categoria_id = tb_categoria.id WHERE categoria LIKE "java";