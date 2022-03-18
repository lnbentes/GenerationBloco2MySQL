CREATE database db_pokemon;

USE db_pokemon;

CREATE table tb_kanto(
id bigint auto_increment,  -- o id obrigatorio
nome varchar(255),
tipo varchar(255),
ataque int,  -- tipo inteiro

primary key(id)  -- criar a chave primaria obrigatorio esse id e o id usdo logo em cima

);

SELECT * FROM tb_kanto;

INSERT INTO tb_kanto (nome, tipo, ataque) VALUES ("bulbasaur", "Grass - poison", 49);

ALTER TABLE tb_kanto ADD defesa int;