/*
Crie um banco de dados para um serviço de RH de uma empresa, onde o sistema
trabalhará com as informações dos funcionaries desta empresa.
Crie uma tabela de funcionaries e utilizando a habilidade de abstração e determine 5
atributos relevantes dos funcionaries para se trabalhar com o serviço deste RH.
Popule esta tabela com até 5 dados;
Faça um select que retorne os funcionaries com o salário maior do que 2000.
Faça um select que retorne os funcionaries com o salário menor do que 2000.
Ao término atualize um dado desta tabela através de uma query de atualização.
salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e
coloque no seu GitHuB pessoal e compartilhe esta atividade.
*/

create database bd_rh;

use bd_rh;

create table tb_funcionario(
	id bigint auto_increment,
    primeiro_nome varchar(20) not null,
    segundo_nome varchar(20) not null,
    setor varchar(20),
    salario int,
	ativo boolean,
    primary key(id)

);

select * from tb_funcionario;

insert into tb_funcionario (primeiro_nome, segundo_nome, setor, salario, ativo) values ("Pedro", "Ferreira", "RH", 3000, true);
insert into tb_funcionario (primeiro_nome, segundo_nome, setor, salario, ativo) values ("Maria", "Ferreira", "CO", 9000, true);
insert into tb_funcionario (primeiro_nome, segundo_nome, setor, salario, ativo) values ("Joao", "Freitas", "Dev", 4000, true);
insert into tb_funcionario (primeiro_nome, segundo_nome, setor, salario, ativo) values ("Devide", "Jordam", "RH", 2500, true);
insert into tb_funcionario (primeiro_nome, segundo_nome, setor, salario, ativo) values ("Julia", "Freitas", "RH", 3000, true);

select * from tb_funcionario where salario > 2000;
select * from tb_funcionario where salario < 2000;

update tb_funcionario set salario = 1500 where id = 3;