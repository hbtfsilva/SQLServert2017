	
	-- # Execercio (SUBSELECT)
	-- # Todos os endere�os do estado de Alberta. 

		select *
		from Person.Address
		where StateProvinceID in (
		select StateProvinceID from person.StateProvince 
		where name = 'Alberta')