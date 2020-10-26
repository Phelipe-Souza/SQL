show databases;
use aula1;
create table funcionarios
(
nome varchar(30),
idade tinyint,
sexo char (1),
peso float,
altura float,
nacionalidade varchar (20)
);
insert into funcionarios values ("Juliana",22,"F",65,1.65,"Brasileira");
insert into funcionarios (nome,sexo) values ("Phelipe", "M");

select * from funcionarios;

insert into funcionarios values 
("Karina",22,"F",65,1.65,"Brasileira"),
("Ricardo",22,"F",65,1.65,"Brasileira"),
("Rafaela",22,"F",65,1.65,"Brasileira"),
("Matheus",22,"F",65,1.65,"Brasileira"),
("Torok",22,"F",65,1.65,"Brasileira");
select * from funcionarios;

update funcionarios set nacionalidade = "Argentino" where nome = "Torok";

select * from funcionarios; # Dados da tabela
show tables;
describe tables funcionarios; #Estrutura da tabela
select nome from funcionarios; #Mostra a tabela que foi chamada (Nome)
select nome, nacionalidade from funcionarios; # Mostra as tabelas que foi chamada(Nome, Nacionalidade)funcionarios
