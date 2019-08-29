/*Criando Base de dados*/
	create database Clinica;

/*Usar Database*/
	use Clinica;
    
/*Mostrar tabela*/
	select * from Ambulatorios; 

/*Criando Tabela Ambulatorio*/
	create table Ambulatorios(
		nroa int not null, 
        andar numeric(3) not null,
		capacidade smallint,
        primary key(nroa));

/*Prenchendo Ambulatorio*/
	insert into ambulatorio (nroa, andar, capacidade) values (1,1,30);

	insert into ambulatorio (nroa, andar, capacidade) values (2,1,50);

	insert into ambulatorio (nroa, andar, capacidade) values (3,2,40);

	insert into ambulatorio (nroa, andar, capacidade) values (4,2,24);

	insert into ambulatorio (nroa, andar, capacidade) values (5,2,55);        
    

/*Criando Tabelas Medicos*/
	create table Medicos(
		codm int not null, 
        nome nvarchar(40) not null,
		idade smallint not null,
        especialidade char(20),
        cpf numeric(11) not null unique,
        cidade varchar(30),
        nroa smallint not null references ambulatorio(nroa),
        primary key(codm)); 

/*Prenchendo Medicos*/
	insert into medicos (codm, nome, idade, especialidade, cpf, cidade, nroa) values (1, 'Joao', 40, 'Ortopedia', '10000100000', 'Florianopolis', 1);

	insert into medicos (codm, nome, idade, especialidade, cpf, cidade, nroa) values (2, 'Maria', 42, 'traumatologia', '10000110000', 'blumenau', 2);

	insert into medicos (codm, nome, idade, especialidade, cpf, cidade, nroa) values (3, 'Pedro', 51, 'pediatria', '11000100000', 'São Jose', 2);

	insert into medicos (codm, nome, idade, especialidade, cpf, cidade, nroa) values (4, 'Carlos', 28, 'Ortopedia', '11000110000', 'Joinvile', 2);

	insert into medicos (codm, nome, idade, especialidade, cpf, cidade, nroa) values (5, 'Marcia', 33, 'nautologia', '11000111000', 'Biguacu', 3);

        
/*Criando Tabela Pacientes*/
	create table Pacientes(
		codp int not null,
        nome varchar(40) not null,
        idade smallint not null,
		cpf numeric(11) not null unique,
        cidade char(30),
        doenca varchar(40) not null,
        primary key (codp));
/*Populando a tabela Pacientes*/
	insert into pacientes (codp, nome, idade, cidade, cpf, doenca) values (1, 'Ana', 20, 'Florianopolis', '20000200000',' gripe');
 
	insert into pacientes (codp, nome, idade, cidade, cpf, doenca) values (2, 'Paulo', 24, 'Palhoca', '20000220000',' fratura');
 
	insert into pacientes (codp, nome, idade, cidade, cpf, doenca) values (3, 'Lucia', 30, 'Biguacu', '22000200000',' tendinite');
 
	insert into pacientes (codp, nome, idade, cidade, cpf, doenca) values (4, 'Carlos', 28, 'Joinville', '11000110000','sarampo');
 
        
/*Criando Tabela Funcionarios*/
	create table Funcionarios(
		codf int not null,
        nome varchar(40) not null,
        idade smallint not null,
		cpf numeric(11) not null unique,
        cidade char(30),
        salario numeric(10,2) not null,
        cargo varchar(20),
        primary key (codf));

/*Populando a tabela Funcionarios*/
	insert into funcionarios (codf, nome, idade, cpf, cidade, salario, cargo) values (1, 'Rita', 32, '20000100000', 'Sao Jose', 1200, 'Fachineira');
 
	insert into funcionarios (codf, nome, idade, cpf, cidade, salario, cargo) values (2, 'Maria', 55, '30000110000', 'Palhoca', 1220, 'Enfermeira');
 
	insert into funcionarios (codf, nome, idade, cpf, cidade, salario, cargo) values (3, 'Caio', 45, '41000100000', 'Florianopolis', 1100, 'Enfermeiro');
 
	insert into funcionarios (codf, nome, idade, cpf, cidade, salario, cargo) values (4, 'Carlos', 44, '51000110000', 'Florianopolis', 1200, 'Fachineiro');
 
	insert into funcionarios (codf, nome, idade, cpf, cidade, salario, cargo) values (5, 'Juninho', 33, '61000111000', 'Florianopolis', 2500, 'Fachineiro');
 
       

        
/*Criando Tabela Consulta*/
	create table Consultas(
		num_consulta int not null,
        cod_m smallint not null references Medicos(codm),
        cod_p smallint not null references Paciente(codp),
        data_consulta date,
        hora time,
        primary key (num_consulta));

/*Populando a tabela Consutas*/
insert into consultas (num_consulta, cod_m, cod_p, data_consulta, hora) values (1, 1, 1, '2006/06/26',' 14:00:00'); 

insert into consultas (num_consulta, cod_m, cod_p, data_consulta, hora) values (2, 3, 1, '2006/06/28',' 10:00:00'); 

insert into consultas (num_consulta, cod_m, cod_p, data_consulta, hora) values (3, 5, 1, '2006/06/27',' 9:00:00'); 

insert into consultas (num_consulta, cod_m, cod_p, data_consulta, hora) values (4, 4, 1, '2006/06/18',' 11:00:00'); 

insert into consultas (num_consulta, cod_m, cod_p, data_consulta, hora) values (5, 2, 1, '2006/06/19',' 14:00:00'); 

insert into consultas (num_consulta, cod_m, cod_p, data_consulta, hora) values (6, 1, 1, '2006/06/11',' 17:00:00'); 

insert into consultas (num_consulta, cod_m, cod_p, data_consulta, hora) values (7, 4, 1, '2006/06/16',' 18:00:00'); 

insert into consultas (num_consulta, cod_m, cod_p, data_consulta, hora) values (8, 3, 1, '2006/06/17',' 10:00:00'); 

insert into consultas (num_consulta, cod_m, cod_p, data_consulta, hora) values (9, 5, 1, '2006/06/15',' 13:00:00'); 

insert into consultas (num_consulta, cod_m, cod_p, data_consulta, hora) values (10, 2, 1, '2006/06/20',' 13:00:00'); 

insert into consultas (num_consulta, cod_m, cod_p, data_consulta, hora) values (11, 1, 1, '2006/06/22',' 19:30:00'); 




        
        
        
		

