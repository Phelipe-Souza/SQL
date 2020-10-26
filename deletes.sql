delete from matriculados
where id_curso = '2';

select * from matriculados;

#deletar varios por vez 
delete from matriculados
where carga = '40';

select * from matriculados;


truncate table matriculados;
select * from matriculados;