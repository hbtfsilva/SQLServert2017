
	-- # SQL SUBQUERY (SUBSELECT)
	-- # Montar um relatório de todos os produtos cadastrados que tenham o preço de venda acima da média

		/*
		select AVG (ListPrice)
		from Production.Product

		select *
		from Production.Product
		where ListPrice > 438.66
		*/

		select *
		from Production.Product
		where ListPrice > (select AVG (ListPrice) from Production.Product)

	-- # Como saber quais fucionários tem o cargo de 'Design Engineer'
		
		select *
		from Person.Person
		where BusinessEntityID in (5,6,15)

			select * 
			from HumanResources.Employee
			where JobTitle = 'Design Engineer'

				select FirstName
				from Person.Person
				where BusinessEntityID in (
				select BusinessEntityID from HumanResources.Employee
				where JobTitle = 'Design Engineer')

		-- # JOIN

			select p.firstname
			from Person.Person P
			inner join HumanResources.Employee E on P.businessEntityID = E.businessEntityID
			and e.JobTitle = 'Design Engineer'