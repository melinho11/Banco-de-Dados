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
        
/*Criando Tabela Pacientes*/
	create table Pacientes(
		codp int not null,
        nome varchar(40) not null,
        idade smallint not null,
		cpf numeric(11) not null unique,
        cidade char(30),
        doenca varchar(40) not null,
        primary key (codp));
        
/*Criando Tabela Funcionarios*/
	create table Funcionarios(
		codf int not null,
        nome varchar(40) not null,
        idade smallint not null,
		cpf numeric(11) not null unique,
        cidade char(30),
        salario varchar(40) not null,
        cargo varchar(20),
        primary key (codf));
        /*arrumar esta tabela*/
        
		
/*Criando Tabela Pacientes*/
	create table Pacientes(
		codp int not null,
        nome varchar(40) not null,
        idade smallint not null,
		cpf numeric(11) not null unique,
        cidade char(30),
        doenca varchar(40) not null,
        primary key (codp));
        
/*Criando Tabela Pacientes*/
	create table Consultas(
		num_consulta int not null,
        cod_m smallint not null references Medicos(codm),
        cod_p smallint not null references Paciente(codp),
        data_consulta date,
        hora time,
        primary key (num_consulta));
        
        
        
		

