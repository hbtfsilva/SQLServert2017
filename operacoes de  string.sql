
-- SQL operações em string
-- SQL server string operations 

-- Concatenando dados
	select CONCAT(FirstName, ' ', LastName)
	from Person.Person

-- Escrevendo tudo em maiusculo
	select UPPER(FirstName)
	from Person.Person

-- Escrevendo tudo em minusculo
	select LOWER(LastName)
	from Person.Person

-- Fazer a contagem de caracteres
	select LastName, LEN(LastName) as Qtd
	from Person.Person

-- Substring, extração de letras
	select FirstName, SUBSTRING(FirstName,1,3)
	from Person.Person

-- Substuição de string
	select ProductNumber, REPLACE(ProductNumber, '-', '#')
	from Production.Product