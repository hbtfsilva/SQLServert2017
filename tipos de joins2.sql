
	-- SQL tipos de joins
	
	-- Inner join retornam resultados em ambas tabelas, ele retornar a interseção.
	
	inner join

	select * from tabelaA
	inner join tabelaB
	on tabelaA.nome = tabelaB.nome
	
	-- Tudo existe em comum entre as tabelas.
	
	full outer join 

	select * from tabelaA
	full outer join tabelaB
	on tabelaA.nome = tabelaB.nome

	-- Retorna todos os registros correspondentes da primeira tabela

	left outer join

	select * from tabelaA
	left outer join 
	on tabelaA.nome = tabelaB.nome

	-- Retorna todos os registros correspondentes da segunda tabela

	right outer join

	select * from tabelaA
	left outer join 
	on tabelaA.nome = tabelaB.nome