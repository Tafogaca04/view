create database banco_empresa_join;
use banco_empresa_join;

create table departamento(
id_depart int primary key auto_increment not null,
nome varchar (255) not null
);

create table  funcionario(
 id_fun int primary key auto_increment not null,
 nome varchar(100) not null,
 salario decimal (10,2) not null,
 id_depart int,
 foreign key(id_depart) references departamento(id_depart)
 );
 
  create table dependentes(
 id_dep int primary key auto_increment not null, 
 nome varchar(255) not null,
 id_fun int not null,
 foreign key(id_fun) references funcionario(id_fun)
 );
 insert into departamento (nome)
 values("RH"),
 ("Administração"),
 ("Marketing"),
 ("TI"),
 ("Limpeza");
 
 insert into funcionario (nome,salario,id_depart)
 values("Raisa","3.600","1"),
 ("Adriana","5.000","3"),
 ("Marcio","5.800","1"),
 ("Thais","4.700","2"),
 ("Lorival","7.800","3");
 
 insert into dependentes (nome,id_func)
 values("Lívia","2"),
 ("André","5"),
 ("Manuella","1"),
 ("Arthur","3"),
 ("Bernardo","2"),
 ("Alice","4");
 
 select* from dependentes;
  select* from funcionario;
   select* from departamento;


 
 
  select funcionario.nome,dependentes.nome
  from funcionario
  inner join dependentes
  on funcionarios.id_fun=dependentes.id_dep
  where funcionario.id_fun=2;
 