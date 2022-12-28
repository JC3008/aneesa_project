CREATE TABLE produtos(

	pk_produto			INT IDENTITY,
	chave_negocio		UNIQUEIDENTIFIER,
	nome				VARCHAR(50)			NOT NULL,
	descricao			VARCHAR(50)			NOT NULL,
	preco				NUMERIC(7,4)		NOT NULL,
	sk_fornecedor		INT					NULL		DEFAULT('VAREJO 25 DE MARCO'),
	inicio				DATETIME			NOT NULL,
	termino				DATETIME			NULL		DEFAULT ('2030-12-31')

	)

CREATE TABLE clientes (
	
	pk_clientes			INT IDENTITY,
	nome				VARCHAR(50)		NOT NULL,
	cpf					VARCHAR(12)		NOT NULL,
	rg					VARCHAR(15)		NOT NULL,
	data_de_nascimento	DATETIME		NOT NULL,
	data_de_cadastro	DATETIME		NOT NULL,
	contato				VARCHAR(15)		NOT NULL,
	estado				CHAR(2)			NOT NULL,
	municipio			VARCHAR(50)		NOT NULL,
	bairro				VARCHAR(50)		NOT NULL,
	emil				VARCHAR(50)		NOT NULL,
	inicio				DATETIME		NOT NULL,
	termino				DATETIME		NULL		DEFAULT ('2030-12-31')
	
	)

CREATE TABLE fornecedores (
	
	pk_fornecedores		INT IDENTITY,
	nome				VARCHAR(50)		NOT NULL,
	cpf					VARCHAR(12)		NOT NULL,
	cnpj				VARCHAR(15)		NOT NULL,
	propretario			VARCHAR(15)		NOT NULL,
	data_de_cadastro	DATETIME		NOT NULL,
	contato				VARCHAR(15)		NOT NULL,
	estado				CHAR(2)			NOT NULL,
	municipio			VARCHAR(50)		NOT NULL,
	bairro				VARCHAR(50)		NOT NULL,
	emil				VARCHAR(50)		NOT NULL,
	inicio				DATETIME		NOT NULL,
	termino				DATETIME		NULL		DEFAULT ('2030-12-31')
		
	)

CREATE TABLE campanhas (

	pk_campanha			INT IDENTITY,
	chave_campanha		VARCHAR(50),
	nome				VARCHAR(50),
	inicio				DATETIME		NOT NULL,
	termino				DATETIME		NULL		DEFAULT ('2030-12-31')

)

CREATE TABLE parceiros_revenda (

	pk_parceiros		INT IDENTITY,
	nome				VARCHAR(50)		NOT NULL,
	cpf					VARCHAR(12)		NOT NULL,
	cnpj				VARCHAR(15)		NOT NULL,
	propretario			VARCHAR(15)		NOT NULL,
	data_de_cadastro	DATETIME		NOT NULL,
	contato				VARCHAR(15)		NOT NULL,
	estado				CHAR(2)			NOT NULL,
	municipio			VARCHAR(50)		NOT NULL,
	bairro				VARCHAR(50)		NOT NULL,
	emil				VARCHAR(50)		NOT NULL,
	inicio				DATETIME		NOT NULL,
	termino				DATETIME		NULL		DEFAULT ('2030-12-31')
	
)


CREATE TABLE vendas (

	pk_vendas			INT IDENTITY,
	data_venda			DATETIME		NOT NULL,
	quantidade			INT				NOT NULL,
	fk_produto			INT				NOT NULL,
	fk_fornecedor		INT				NOT NULL,
	fk_clientes			INT				NOT NULL,
	campanha			INT				NOT NULL

	)


	--DROP TABLE [dbo].[campanhas]
	--DROP TABLE [dbo].[clientes]
	--DROP TABLE [dbo].[fornecedores]
	--DROP TABLE [dbo].[parceiros_revenda]
	--DROP TABLE [dbo].[produtos]
	--DROP TABLE [dbo].[vendas]