create database colegio --Criei o banco de dados colegio
use colegio --Acessei esse banco de dados pelo comando "use"

--Criei a tabela disciplinas
create table disciplinas(
	--Digitei meus campos da tabela disciplinas
	CodDisciplina char(2),
	NomeDisciplina varchar(30),
	primary key(CodDisciplina) --Criação da chave primária

)
--Criei a tabela cursos
create table cursos(
	--Digitei meus campos da tabela cursos
	codcurso char(2),
	nome varchar(50),
	coddic1 char(2),
	coddic2 char(2),
	coddic3 char(2),
	primary key(codcurso), --Criei a chave primária codcurso
	--Criação das chaves estrangeiras
	foreign key(coddic1) references disciplinas,
	foreign key(coddic2) references disciplinas,
	foreign key(coddic3) references disciplinas
)
--Criei a tabela alunos
create table alunos(
	--Digitei meus campos da tabela alunos
	matricula varchar(5),
	nome varchar(50),
	endereco varchar(50),
	cidade varchar(30),
	codcurso char(2),
	primary key(matricula), --Chave primária
	foreign key(codcurso)references cursos --Chave estrangeira
)


