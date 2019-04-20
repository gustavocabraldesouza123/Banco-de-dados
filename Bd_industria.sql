create database industria --Criei o banco de dados industria
use industria --Acesssei esse banco de dados pelo comando "use"

--Cria��o da tabela fornecedores 
create table fornecedores(
	--Digitei meus campos da tabela fornecedores
	Cod_Fornecedor int,
	Razao_Social varchar(70),
	Nome_Fantasia varchar(70),
	CNPJ varchar(20),
	Endereco varchar(50),
	Num varchar(7),
	Bairro varchar(25),
	Cidade varchar(25),
	Fone varchar(18),
	Nome_Contato varchar(20),
	Email varchar(50),
	primary key(Cod_Fornecedor), --Cria��o da chave prim�ria
)
--Cria��o da tabela produtos
create table produtos(  
	--Digitei meus campos da tabela produtos
	Cod_Produto int,
	Descricao varchar(50),
	Unidade varchar(2),
	Qtde_Estoque float,
	Caracteristicas varchar(50),
	Cod_Fornecedor int,
	primary key(Cod_Produto), --Cria��o da chave prim�ria "Cod_Produto"
	foreign key(Cod_Fornecedor) references fornecedores --Chave estrangeira
)