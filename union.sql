
	select [ProductID], [Name], [ProductNumber]
	from Production.Product
	where name like '%chain%'
		union 
	select [ProductID], [Name], [ProductNumber]
	from Production.Product
	where Name like '%decal%'
	order by name desc 

	-- @@ 

	select Firstname, title, middlename
	from Person.Person
	where title = 'Mr.'
	union	-- remove os dados duplicados e unir as informa��es dos dois selects
	select firstname, title, middlename
	from Person.Person
	where MiddleName = 'A'

