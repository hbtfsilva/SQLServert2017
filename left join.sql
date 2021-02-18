
-- Como descobrir quais pessoas tem um cart�o de credito registrado

	select * from 	Person.Person PP
	left join Sales.PersonCreditCard PC
	on PP.BusinessEntityID = PC.BusinessEntityID
	where PC.BusinessEntityID is null -- usu�rios sem cart�o de credito registrado
