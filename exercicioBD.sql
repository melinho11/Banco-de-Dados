/* BANCO DE DADOS CRIADOS*/
create database clinica;

/* USANDO BANCO DE DADOS CRIADO*/
use clinica;

/* TABELA AMBULATORIO */
create table ambulatorio ( nrua int not null,
 andar numeric(3) not null,
 capacidade smallint not null, 
 primary key(nrua));

insert into ambulatorio (nrua, andar, capacidade) values (137,3,300);

select*from ambulatorio;

/* TABELA MEDICOS*/
create table medicos ( cod_med int not null,
 nome varchar(40) not null,
 idade smallint not null,
 especialidade char(20) not null,
 cpf varchar(11)  not null unique,
 cidade varchar(30),
 nroa int not null REFERENCES ambulatorio(nroa),
 primary key (cod_med)); 
  
 insert into medicos (cod_med, nome, idade, especialidade, cpf, cidade, nroa) values (1, 'Adelvaldo', 38, 'Pediatra', '379.038.330-90', 'Sao Paulo', 12 );
 
 select*from medicos;
 
 /*TABELA PACIENTES*/
 create table pacientes (cod_paciente int not null,
 nome varchar(40) not null,
 idade smallint not null,
 cidade varchar(30),
 cpf varchar(11) not null unique,
 doenca varchar(40) not null, primary key(cod_paciente));

 insert into pacientes (cod_paciente, nome, idade, cidade, cpf, doenca) values (1, 'Josefino', 18, 'Sao Paulo', '581.719.660-39',' dor de barriga');
 
 select*from pacientes;
 
 /*TABELA FUNCIONARIOS*/
 create table funcionarios(cod_funcionario int not null,
 nome varchar(40) not null,
 idade smallint not null,
 cpf varchar(40) not null unique,
 cidade varchar(30) not null,
 salario numeric(10,2) not null,
 cargo varchar (20),
 primary key (cod_funcionario));  

 insert into funcionarios (cod_funcionario, nome, idade, cpf, cidade, salario, cargo) values (1, 'Juninho', 27, '807.616.720-52', 'Sao Paulo', 6000, 'Cardiologista');
 
 select*from funcionarios;
 
 /*TABELA CONSULTAS*/
 create table consultas (num_consulta int not null, cod_med smallint not null references medicos(cod_med), cod_paciente smallint not null references pacientes(cod_paciente), data_consulta date, hora time, primary key(num_consulta));

insert into consultas (num_consulta, cod_med, cod_paciente, data_consulta, hora) values (1, 1, 1, '30/03/2001',' 15:00:00'); 

select*from consultas;