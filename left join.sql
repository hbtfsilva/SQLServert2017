
-- Como descobrir quais pessoas tem um cartão de credito registrado

	select * from 	Person.Person PP
	left join Sales.PersonCreditCard PC
	on PP.BusinessEntityID = PC.BusinessEntityID
	where PC.BusinessEntityID is null -- usuários sem cartão de credito registrado
