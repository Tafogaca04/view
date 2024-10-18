create database ger_join;

use ger_join;
 create table  funcionarios(
 cod_fun int primary key auto_increment not null,
 nome varchar(255) not null,
 especialidade varchar (255) not null
 );
 
 create table dependentes(
 cod int primary key auto_increment not null, 
 nome varchar(255) not null,
 cod_fun int not null,
 foreign key(cod_fun) references funcionarios(cod_fun)
 );
 insert into  funcionarios(nome,especialidade)
 values("José","engenheiro"),
 ("João","mestre de obras"),
 ("Maria","contabilidade");
 
  insert into dependentes (nome,cod_fun)
 values("Pedro","1"),
 ("Alice","1"),
  ("Luana","3");
 
  select funcionarios.nome,dependentes.nome
  from funcionarios
  inner join dependentes
  on funcionarios.cod_fun=dependentes.cod_fun
  where funcionarios.cod_fun=1;
 
 select funcionarios.nome,dependentes.nome
 from funcionarios 
 left join dependentes 
 on funcionarios.cod_fun=dependentes.cod_fun;
 
 select funcionarios.nome,dependentes.nome
 from funcionarios 
 left join dependentes 
 on funcionarios.cod_fun=dependentes.cod_fun
 where dependentes.nome is null; #exclunding left
 
  select funcionarios.nome,dependentes.nome
 from funcionarios 
 right join dependentes 
 on funcionarios.cod_fun=dependentes.cod_fun
  where funcionarios.nome is null; #exclunding right
  