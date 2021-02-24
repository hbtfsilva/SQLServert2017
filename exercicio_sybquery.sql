	
	-- # Execercio (SUBSELECT)
	-- # Todos os endereços do estado de Alberta. 

		select *
		from Person.Address
		where StateProvinceID in (
		select StateProvinceID from person.StateProvince 
		where name = 'Alberta')