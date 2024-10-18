#criar uma view
create view  vw_lista_funcionarios AS 
select nome,especialidade
from funcionarios;

#utilizando a view criada
select * from vw_lista_funcionarios;

#criar uma view
create view vw_lista_dependentes AS
select nome
from dependentes;

#utilizando a view criadavw_lista_dependentes
select*from vw_lista_dependentes;

#criar uma view
create view vw_lista_funcionario_com_dependentes AS
select funcionarios.nome as func_nome,dependentes.nome as dep_nome
from funcionarios
inner join dependentes
on funcionarios.cod_fun=dependentes.cod;

select*from vw_lista_funcionario_com_dependentes;

 #criar com lefth join
create view vw_lista_funcionario_e_dependentes AS
select funcionarios.nome as func_nome,dependentes.nome as dep_nome
from dependentes
left join funcionarios
on funcionarios.cod_fun=dependentes.cod;

 select*from vw_lista_funcionario_e_dependentes;
 
 #criar com right join
 create view vw_lista_funcionario_dependentes AS
select funcionarios.nome as func_nome,dependentes.nome as dep_nome
from funcionarios
right join dependentes
on funcionarios.cod_fun=dependentes.cod;
 
 select*from vw_lista_funcionario_dependentes;
 
 #criar com left join exclunding
create view vw_lista_funcionario_e_dependentes AS
select funcionarios.nome as func_nome,dependentes.nome as dep_nome
from dependentes
left join funcionarios
on funcionarios.cod_fun=dependentes.cod
where dependentes.nome is null; 

 #criar com rigth join exclunding
   create view vw_lista_funcionario_dependentes AS
select funcionarios.nome as func_nome,dependentes.nome as dep_nome
from funcionarios
right join dependentes
on funcionarios.cod_fun=dependentes.cod
  where funcionarios.nome is null; 

