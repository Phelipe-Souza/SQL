#Exercicio 1
#Criar Banco de dados chamado db_cidade_das_carnes
#drop database db_cidade_das_carnes;
create database db_cidade_das_carnes;
use db_cidade_das_carnes;

#Criar duas tabelas tb_produto e tb_categoria.
#drop table tb_categoria;
create table tb_categoria
(
  id_categoria int primary key auto_increment,
  tipo varchar(20),
  origem varchar(20)
)ENGINE=InnoDB;

insert into tb_categoria (tipo,origem) values
('Carne Bovina','Animal'),
('Carne Suina','Animal'),
('Pescado','Animal'),
('Carne Vegetal','Vegetal'),
('Aves','Animal');

select * From tb_categoria;

drop Table tb_produto;
Create Table tb_produto
(
  id_produto int primary key auto_increment,
  nome varchar(20),
  preco decimal (10,2),
  estoque_Kg double,
  grau varchar (10),
  id_categoria int not null,
  constraint fk_categoria foreign key (id_categoria) references db_cidade_das_carnes.tb_categoria (id_categoria)
)ENGINE=InnoDB;


insert into tb_produto (nome,preco,estoque_kg,grau,id_categoria) values
   ('Alcatra', '28.90','224.00','Carne de 1ª',1),
   ('Contra Filé', '35.40','340.00','Carne de 1ª',1),
   ('Acém', '21.00','250.00','Carne de 2ª',1),
   ('Cação em Postas', '19.00','40.00','Não se Aplica',3),
   ('Filé de Salmão', '54.90','66.00','Não se Aplica',3),
   ('Frango Resfriado', '5.90','425.00','Não se Aplica',5),
   ('Filé de Peito', '11.90','315.00','Não se Aplica',5),
   ('Bisteca da Copa', '14.00','235.00','Não se Aplica',2),
   ('Bisteca da Copa', '14.00','235.00','Não se Aplica',2),
   ('Costelinha', '19.00','265.00','Não se Aplica',2);
   
   
select * From tb_produto;


select * from tb_produto where tb_produto.preco > 50.00;

select * from tb_produto where tb_produto.preco > 3.00 and tb_produto.preco < 60.00;

select * from tb_produto where tb_produto.nome like "%co%"; 


select * from tb_categoria
inner join tb_produto
on tb_categoria.id_categoria = tb_produto.id_produto;

select * from tb_produto where tb_produto.id_categoria = 1; #Só busca o Tipo de Carne Bovina pela ID 1

