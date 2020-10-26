use db_rh;
create table db_pessoas 
(
 registro int auto_increment,
 nome varchar(30),
 sexo enum ('F' , 'M'),
 salario decimal(10.2),
 setor varchar(15),
 primary key (registro)
 );
 
 select * From db_pessoas;
 
 insert into db_pessoas (nome, sexo, salario, setor) values 
 ('Phelipe', 'M', '1500.00', 'Compras'),
 ('Maria', 'F', '2700.00', 'Financeiro'),
 ('Vanessa', 'F', '2300.00', 'Recursos Humanos'),
 ('Giovana', 'F', '2300.00', 'PCP'),
 ('Sergio', 'M', '1900.00', 'Produção');
 
  select * From db_pessoas;

 
