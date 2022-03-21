/*Atividade 1
Crie um banco de dados para um serviço de um game Online , o nome do banco deverá ter
o seguinte nome db_generation_game_online, onde, o sistema trabalhará com as
informações dos personagens desse game.

O sistema trabalhará com 2 tabelas tb_personagem e tb_classe.

siga exatamente esse passo a passo:

Crie uma tabela tb_classe utilizando a habilidade de abstração e determine 3 atributos
relevantes da classe para se trabalhar com o serviço desse game Online.

Crie uma tabela tb_personagem e utilizando a habilidade de abstração e determine 5
atributos relevantes dos funcionários para se trabalhar com o serviço desse game Online
(não esqueça de criar a foreign key de tb_classe nesta tabela).

Popule esta tabela classe com até 5 dados.

Popule esta tabela personagem com até 8 dados.

Faça um select que retorne os personagens com o poder de ataque maior do que 2000.

Faça um select trazendo os personagens com poder de defesa entre 1000 e 2000.

Faça um select utilizando LIKE buscando os personagens com a letra C.

Faça um um select com Inner join entre tabela classe e personagem.

Faça um select onde traga todos os personagem de uma classe específica (exemplo todos
os personagens que são arqueiros).
salve as querys para cada uma dos requisitos do exercício em um arquivo .SQL ou texto e
coloque no seu GitHuB pessoal e compartilhe esta atividade.*/

CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classe(
	id BIGINT AUTO_INCREMENT,
    casse varchar(255),
    lvl int,
    habilidade varchar(255),
    
    primary key(id)
);

ALTER TABLE tb_classe CHANGE casse classe varchar(255); -- Alterando variavel da tabela

SELECT * FROM tb_classe;

CREATE TABLE tb_personagem(
	id BIGINT AUTO_INCREMENT,
    nome varchar(255),
    raca varchar(255),
    vida int,
    defesa int,
    ataque int,
    magia int,
    calsse_id bigint,
    
    primary key(id),
    foreign key(calsse_id) references tb_classe(id) -- Esse comando vai faz o link com a outra tabela
);

SELECT * FROM tb_personagem;

INSERT INTO tb_classe(classe, lvl, habilidade) VALUES ("Paladino", 5, "Templatio");
INSERT INTO tb_classe(classe, lvl, habilidade) VALUES ("Mago", 3, "Templatio");
INSERT INTO tb_classe(classe, lvl, habilidade) VALUES ("Ladrao", 8, "Templatio");
INSERT INTO tb_classe(classe, lvl, habilidade) VALUES ("Bardo", 100, "Templatio");
INSERT INTO tb_classe(classe, lvl, habilidade) VALUES ("Aruqeiro", 7, "Templatio");

INSERT INTO tb_personagem(nome, raca, vida, defesa, ataque, magia, calsse_id) VALUES ("Bob", "Ork", 60, 4200, 8000, 100, 1);
INSERT INTO tb_personagem(nome, raca, vida, defesa, ataque, magia, calsse_id) VALUES ("Renta", "Elfo", 80, 3500, 500, 3);
INSERT INTO tb_personagem(nome, raca, vida, defesa, ataque, magia, calsse_id) VALUES ("Lucas", "Humano", 90, 8000, 8000, 1000, 4);
INSERT INTO tb_personagem(nome, raca, vida, defesa, ataque, magia, calsse_id) VALUES ("Joao", "Humano", 40, 2300, 6500, 500, 5);
INSERT INTO tb_personagem(nome, raca, vida, defesa, ataque, magia, calsse_id) VALUES ("Maria", "Anao", 10, 1100, 3200, 150, 2);
INSERT INTO tb_personagem(nome, raca, vida, defesa, ataque, magia, calsse_id) VALUES ("Madalena", "Elfo", 90, 6300, 2100, 1110, 3);
INSERT INTO tb_personagem(nome, raca, vida, defesa, ataque, magia, calsse_id) VALUES ("Pedro", "Humano", 30, 6400, 1200, 100, 2);
INSERT INTO tb_personagem(nome, raca, vida, defesa, ataque, magia, calsse_id) VALUES ("Judas", "Ork", 22, 2600, 4300, 400, 1);

SELECT * FROM tb_personagem WHERE ataque > 2000;
SELECT * FROM tb_personagem WHERE defesa >= 1000 AND defesa <= 2000;
SELECT * FROM tb_personagem WHERE nome LIKE "%C%";
SELECT * FROM tb_personagem INNER JOIN tb_classe ON tb_personagem.id = tb_classe.id; -- Mostras os dados relacionados entre tabelas

ALTER TABLE tb_personagem CHANGE calsse_id classe_id bigint;

SELECT * FROM tb_classe INNER JOIN tb_personagem ON tb_personagem.classe_id = tb_classe.id WHERE classe LIKE "Mago";
