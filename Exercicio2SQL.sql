use db_rh2;

select * from tb_cargo;
select * from tb_funcionario;

Insert Into tb_funcionario (nome, sexo, idade, salario) values
('Claudia', 'F', '28', 2300.00),#RH
('Rafael', 'M', '31', 2500.00),#PCP
('Vanessa', 'F', '25', 2300.00),#RH
('João', 'M', '44', 1500.00),#Faxineiro
('Fatima', 'F', '52', 1500.00),#Faxineira
('Natalino', 'M', '58', 2500.00),#PCP
('Eduardo', 'M', '36', 1600.00),#Porteiro
('Maria', 'F', '49', 3200.00),#Gerente Produção
('Cristiane', 'F', '37', 1500.00),#Faxineira
('Roberto', 'M', '37', 1600.00),#Porteiro
('Carlos', 'M', '34', 1600.00),#Porteiro
('Fernanda', 'F', '31', 3200.00),#Gerente Produção
('Yasmim', 'F', '27', 2300.00),#RH
('Ana Paula', 'F', '24', 3200.00),#Gerente Produção
('Elaine', 'F', '26', 2500.00);#PCP

select * from tb_funcionario;


insert into tb_cargo (nome,setor,tb_funcionario_id_funcionario) values
   ('Analista de RH', 'RH',1),
   ('Analista de RH', 'RH',3),
   ('Analista de RH', 'RH',13),
   ('Analista de PCP', 'PCP',2),
   ('Analista de PCP', 'PCP',6),
   ('Analista de PCP', 'PCP',15),
   ('Gerente de Produção' , 'Manufatura', 8),
   ('Gerente de Produção' , 'Manufatura', 12),
   ('Gerente de Produção' , 'Manufatura', 14),
   ('Faxineira(o)' , 'Manutenção Predial', 4),
   ('Faxineira(o)' , 'Manutenção Predial', 5),
   ('Faxineira(o)' , 'Manutenção Predial', 9),
   ('Porteiro(a)', 'Portaria', 7),
   ('Porteiro(a)', 'Portaria', 10),
   ('Porteiro(a)', 'Portaria', 11);
   
   select * from tb_cargo;
   
