--SELECT

--v.*,
--CAST((v.quantidade * p.preco) AS MONEY) AS subtotal,
--CAST((v.quantidade * p.preco) AS MONEY) * (1-CAST(v.desconto + V.icms AS MONEY)/100) - CAST(V.frete AS MONEY)  AS total_venda,
--P.*,
--pr.*,
--C.*,
--CP.*,
--F.*,
--cl.*



--FROM VENDAS V
--	LEFT JOIN produtos				P		ON		V.FK_PRODUTO		= P.pk_produto
--	LEFT JOIN parceiras_revenda		pr		ON		V.fk_parceiras		= pr.pk_parceiros
--	LEFT JOIN clientes				c		ON		V.fk_clientes		= C.pk_clientes
--	LEFT JOIN campanhas				cp		ON		V.fk_campanha		= CP.pk_campanha
--	LEFT JOIN fornecedores			F		ON		V.fk_fornecedor		= F.pk_fornecedores
--	LEFT JOIN calendario			cl		ON		v.fk_calendario		= cl.PK_calendario

INSERT INTO fornecedores
(	
	nome,				
	cpf,
	cnpj,
	propretario,
	data_de_cadastro,
	contato,
	estado,
	municipio,
	bairro,
	email,
	inicio			
		
)
	VALUES
	(
	'Kiki',
	'51612569511',
	'156165616000156',
	'Kiki',
	'2022-10-01',
	'1562219',
	'CH',
	'WHUAN KIN CHIN',
	'WHUAN KIN CHIN',
	'kiki@china.com',
	'2022-12-01'

	)

------------------------------------------------------------------------------------------------------

INSERT INTO produtos
(
chave_negocio,	
nome,			
categoria,		
preco,			
sk_fornecedor,	
inicio			
	
)
values
(
'aneesabasictranca',
'Aneesa Basic Tranca',
'a partir de 12 anos',
119.99,
1,
'2022-12-01'
)
------------------------------------------------------------------------------------------------------

INSERT INTO clientes (

nome,				
cpf,					
rg,					
data_de_nascimento,	
data_de_cadastro,	
contato,				
estado,				
municipio,			
bairro,				
email,				
inicio				
		
)
VALUES (

	'Jozi',
	'15618191561',
	'15612595',
	'1952-01-01',	
	'2022-05-01',
	'11999999999',
	'SP',
	'Sao Paulo',
	'Taipas',
	'jozizinha@pretinha',
	'2022-12-28'


)

------------------------------------------------------------------------------------------------------

INSERT INTO campanhas (

	chave_campanha,	
	nome,			
	inicio,			
	termino			

)
VALUES (

	'crianca2022',
	'dia das crianças',
	'2022-08-01',
	'2022-12-30'

)

------------------------------------------------------------------------------------------------------

INSERT INTO parceiras_revenda (
		
	nome,			
	cpf,			
	cnpj,			
	proprietario,		
	data_de_cadastro,
	contato,			
	estado,			
	municipio,		
	bairro,			
	email,			
	inicio			
				
)
	VALUES (

	'Joana do Nordeste',
	'25615119',
	'15165900015',
	'Joana',
	'2022-12-28',
	'1155195151',
	'BA',
	'Feira de Santana',
	'Santana',
	'morangodonordeste@gmail.com',
	'2022-12-28'


	)

------------------------------------------------------------------------------------------------------
INSERT INTO vendas (

	data_venda,		
	quantidade,		
	desconto,
	icms,
	frete,
	fk_produto,		
	fk_fornecedor,	
	fk_clientes,		
	fk_parceiras,	
	fk_campanha,
	fk_calendario

)
VALUES (

	'2022-06-01',
	1,
	5,
	15,
	10,
	1,
	1,
	1,
	1,
	1,
	1

	)