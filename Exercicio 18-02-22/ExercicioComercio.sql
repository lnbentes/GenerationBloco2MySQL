/*Crie um banco de dados para um e commerce, onde o sistema trabalhará com as
informações dos produtos deste ecommerce.
Crie uma tabela produtos e utilizando a habilidade de abstração e determine 5 atributos
relevantes dos produtos para se trabalhar com o serviço deste ecommerce.
Popule esta tabela com até 8 dados;
Faça um select que retorne os produtos com o valor maior do que 500.
Faça um select que retorne os produtos com o valor menor do que 500.
Ao término atualize um dado desta tabela através de uma query de atualização.
salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e
coloque no seu GitHuB pessoal e compartilhe esta atividade.*/

create database bd_comercio;

use bd_comercio;

create table tb_produto(
	id bigint auto_increment,
    nome varchar(255) not null,
    marca varchar(255) not null,
    validade date,
    valor int,
	estoque boolean,
    primary key(id)

);

select * from tb_produto;

insert into tb_produto(nome, marca, validade, valor, estoque) values ("Mel", "Bear", "2022/04/01", 50, true);
insert into tb_produto(nome, marca, validade, valor, estoque) values ("Pao", "Paes", "2022/04/03", 25, true);
insert into tb_produto(nome, marca, validade, valor, estoque) values ("Carne", "Ceara", "2023/04/01", 550, true);
insert into tb_produto(nome, marca, validade, valor, estoque) values ("Ovo", "Chicken", "2022/03/020", 700, true);
insert into tb_produto(nome, marca, validade, valor, estoque) values ("Arroz", "Tio", "2022/07/01", 500, true);
insert into tb_produto(nome, marca, validade, valor, estoque) values ("Trigo", "Flower", "2022/08/01", 950, true);
insert into tb_produto(nome, marca, validade, valor, estoque) values ("Feijao", "Bean", "2023/06/01", 250, true);
insert into tb_produto(nome, marca, validade, valor, estoque) values ("Alcool", "51", "2024/01/01", 850, true);

select * from tb_produto where valor > 500;
select * from tb_produto where valor < 500;
update tb_produto set estoque = false where id = 5;