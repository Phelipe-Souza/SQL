use db_estoque;

create table tb_marcas
(
id bigint (5) auto_increment, #cinco caracteres
nome varchar (20) not null,
ativo boolean,
primary key (id)
);

select * from tb_marcas; #Visualisando a tabela criada sem nenhuma informação

insert into tb_marcas (nome, ativo) values ('Nike', true); #Inserindo dados na tabela,
#o id será adicionado automatico pelo comando auto_increment
select * from tb_marcas; #Visualizando tabela com dado inserido
insert into tb_marcas (nome, ativo) values ('Fatal', false); #Inserindo mais um dado
select * from tb_marcas; #visualizando a tabela
update tb_marcas set nome = "Fatal Surf" , ativo = true where id = 2; #alterando dado da tabela
select * from tb_marcas;
delete from tb_marcas where id = 1; #Usado para deletar a linha selecionada pelo id
select * from tb_marcas;
insert into tb_marcas (nome, ativo) values ('Nike', true);
insert into tb_marcas (nome, ativo) values ('H&M', true);
insert into tb_marcas (nome, ativo) values ('Zara', true);
insert into tb_marcas (nome, ativo) values ('Louis Vuitton', true);
insert into tb_marcas (nome, ativo) values ('Adidas', true);
insert into tb_marcas (nome, ativo) values ('Uniqlo', true);
insert into tb_marcas (nome, ativo) values ('Hermès', true);
insert into tb_marcas (nome, ativo) values ('Rolex', true);
insert into tb_marcas (nome, ativo) values ('Gucci', true);
insert into tb_marcas (nome, ativo) values ('Cartier', true);

select * From tb_marcas;

use db_estoque;

create table tb_produtos 
(
  id bigint auto_increment,
  nome varchar (30) not null,
  preco decimal (10,2),
  marca_id bigint not null,
  primary key (id),
  foreign key (marca_id) references tb_marcas (id) #Buscando dados da tabela Marcas
);

#Popular a tabela

insert into tb_produtos(nome,preco,marca_id) 
values ('Camisa', 22.99, 3);
select*from tb_produtos;

insert into tb_produtos(nome,preco,marca_id) 
values ('Tenis', 69.99, 7);
select*from tb_produtos;





