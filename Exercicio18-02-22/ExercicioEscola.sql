/*
Crie um banco de dados para um registro de uma escola, onde o sistema trabalhará com as
informações dos estudantes deste registro dessa escola.
Crie uma tabela estudantes e utilizando a habilidade de abstração e determine 5 atributos
relevantes dos estudantes para se trabalhar com o serviço dessa escola.

Popule esta tabela com até 8 dados;
Faça um select que retorne o/as estudantes com a nota maior do que 7.
Faça um select que retorne o/as estudantes com a nota menor do que 7.
Ao término atualize um dado desta tabela através de uma query de atualização.
salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e
coloque no seu GitHuB pessoal e compartilhe esta atividade.
*/

create database bd_escola;

use bd_escola;

create table tb_estudantes(
	id bigint auto_increment, -- So um dado pode ser auto_increment
    primeiro_nome varchar(255) not null,
    segundo_nome varchar(255) not null,
    serie varchar(255),
    nota int,
	ativo boolean,
    
    primary key(id)
);

select * from tb_estudantes;

insert into tb_estudantes(primeiro_nome, segundo_nome, serie, nota, ativo) values ("Lucas", "Bentes", "Primeiro", 8, true);
insert into tb_estudantes(primeiro_nome, segundo_nome, serie, nota, ativo) values ("Leiticia", "Mentes", "Segundo", 3, true);
insert into tb_estudantes(primeiro_nome, segundo_nome, serie, nota, ativo) values ("Meria", "Barboso", "Primeiro", 6, true);
insert into tb_estudantes(primeiro_nome, segundo_nome, serie, nota, ativo) values ("Bob", "Ferreira", "Terceiro", 7, true);
insert into tb_estudantes(primeiro_nome, segundo_nome, serie, nota, ativo) values ("Ana", "Ferreira", "Segundo", 10, true);
insert into tb_estudantes(primeiro_nome, segundo_nome, serie, nota, ativo) values ("Jose", "Maria", "Primeiro", 2, true);
insert into tb_estudantes(primeiro_nome, segundo_nome, serie, nota, ativo) values ("Ana", "Maria", "Terceiro", 9, true);
insert into tb_estudantes(primeiro_nome, segundo_nome, serie, nota, ativo) values ("Lila", "Gene", "Segundo", 3, true);

select * from tb_estudantes where nota > 7;
select * from tb_estudantes where nota < 7;
update tb_estudantes set ativo = false where id = 5;