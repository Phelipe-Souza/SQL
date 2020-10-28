create database joins;
use joins;
create table endereco_clientes 
(
   cliente_id1 int (11) not null,
   cliente_endereco text,
   primary key (cliente_id1)
);

create table clientes
(
  cliente_id0 int primary key auto_increment,
  nome varchar (100)
);

select * From clientes;
select * From endereco_clientes;

insert into clientes values
		(1, "João Marcio"),	
        (2, "Juliana"),	
        (3, "João Marcio"),
        (4, "Gabriela"),    
        (6, "Fabio"),    
        (7, "Juliana");  
        
        INSERT INTO endereco_clientes VALUES
	(1, 'Rua Faria lima, Centro, São Paulo'),
    (2, 'Rua Osvaldo Cruz,Campinas, São Paulo'),
    (3, 'Rua Rosana, Sinara, Nova Esperança'),
    (4, 'Av. Bias Fortes, Centro, Brasília'),
    (5, 'Beatles, Santa Cruz, Rio de Janeiro'),
    (6, 'Av. Esquerda, Vila Pinheiro, New York');


select * from clientes
left join endereco_clientes
on clientes.cliente_id0 = endereco_clientes.cliente_id1;

select * from clientes
right join endereco_clientes
on clientes.cliente_id0 = endereco_clientes.cliente_id1;

create table clientes_copia select * from clientes;
create table endereco_clientes_copia select * from clientes;

create table inner_copia select * from clientes
inner join endereco_clientes
on clientes.cliente_id0 = endereco_clientes.cliente_id1;


select * from clientes
inner join endereco_clientes
on clientes.cliente_id0 = endereco_clientes.cliente_id1;

