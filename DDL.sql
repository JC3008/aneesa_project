CREATE TABLE produtos(

	pk_produto			INT IDENTITY		(1,1),
	chave_negocio		VARCHAR(50)			UNIQUE,
	nome				VARCHAR(50)			NOT NULL,
	categoria			VARCHAR(50)			NOT NULL,
	preco				NUMERIC(7,4)		NOT NULL,
	sk_fornecedor		INT					NULL		DEFAULT('VAREJO 25 DE MARCO'),
	inicio				DATETIME			NOT NULL,
	termino				DATETIME			NULL		DEFAULT ('2030-12-31')

	)

CREATE  TABLE clientes (
	
	pk_clientes			INT IDENTITY  (1,1),
	nome				VARCHAR(50)		NOT NULL,
	cpf					VARCHAR(12)		NOT NULL,
	rg					VARCHAR(15)		NOT NULL,
	data_de_nascimento	DATETIME		NOT NULL,
	data_de_cadastro	DATETIME		NOT NULL,
	contato				VARCHAR(15)		NOT NULL,
	estado				CHAR(2)			NOT NULL,
	municipio			VARCHAR(50)		NOT NULL,
	bairro				VARCHAR(50)		NOT NULL,
	email				VARCHAR(50)		NOT NULL,
	inicio				DATETIME		NOT NULL,
	termino				DATETIME		NULL		DEFAULT ('2030-12-31')
	
	)

CREATE TABLE fornecedores (
	
	pk_fornecedores		INT IDENTITY  (1,1),
	nome				VARCHAR(50)		NOT NULL,
	cpf					VARCHAR(12)		NOT NULL,
	cnpj				VARCHAR(15)		NOT NULL,
	propretario			VARCHAR(15)		NOT NULL,
	data_de_cadastro	DATETIME		NOT NULL,
	contato				VARCHAR(15)		NOT NULL,
	estado				CHAR(2)			NOT NULL,
	municipio			VARCHAR(50)		NOT NULL,
	bairro				VARCHAR(50)		NOT NULL,
	email				VARCHAR(50)		NOT NULL,
	inicio				DATETIME		NOT NULL,
	termino				DATETIME		NULL		DEFAULT ('2030-12-31')
		
	)

CREATE TABLE campanhas (

	pk_campanha			INT IDENTITY (1,1),
	chave_campanha		VARCHAR(50),
	nome				VARCHAR(50),
	inicio				DATETIME		NOT NULL,
	termino				DATETIME		NULL		DEFAULT ('2030-12-31')

)

CREATE TABLE parceiras_revenda (

	pk_parceiros		INT IDENTITY (1,1),
	nome				VARCHAR(50)		NOT NULL,
	cpf					VARCHAR(12)		NOT NULL,
	cnpj				VARCHAR(15)		NOT NULL,
	proprietario			VARCHAR(15)		NOT NULL,
	data_de_cadastro	DATETIME		NOT NULL,
	contato				VARCHAR(15)		NOT NULL,
	estado				CHAR(2)			NOT NULL,
	municipio			VARCHAR(50)		NOT NULL,
	bairro				VARCHAR(50)		NOT NULL,
	email				VARCHAR(50)		NOT NULL,
	inicio				DATETIME		NOT NULL,
	termino				DATETIME		NULL		DEFAULT ('2030-12-31')
	
)


CREATE TABLE vendas (

	pk_vendas			INT IDENTITY,
	data_venda			DATETIME		NOT NULL,
	quantidade			INT				NOT NULL,
	desconto			INT				NULL		DEFAULT (0),
	icms				INT				NULL		DEFAULT (12),
	frete				INT				NULL		DEFAULT (0),
	fk_produto			INT				NOT NULL,
	fk_fornecedor		INT				NULL		DEFAULT (0),
	fk_clientes			INT				NULL		DEFAULT (0),
	fk_parceiras		INT				NULL		DEFAULT (0),
	fk_campanha			INT				NULL		DEFAULT (0),
	fk_calendario		INT				NULL		DEFAULT (0)

	)


CREATE TABLE calendario (

PK_calendario		INT IDENTITY,
[data]				DATETIME		NOT NULL,
mes_nome			VARCHAR(20)		NOT NULL,
mes					INT				NOT NULL,
semana_do_ano		INT				NOT NULL,
semana_do_mes		INT				NOT NULL,
dia					INT				NOT NULL,
mes_fiscal			INT				NOT NULL,

)


	--DROP TABLE [dbo].[campanhas]
	--DROP TABLE [dbo].[clientes]
	--DROP TABLE [dbo].[fornecedores]
	--DROP TABLE [dbo].[parceiros_revenda]
	--DROP TABLE [dbo].[produtos]
	--DROP TABLE [dbo].[vendas]