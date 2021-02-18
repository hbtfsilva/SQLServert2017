
-- SQL datepart

	select SalesOrderID, DATEPART (MONTH, orderdate) as Mes
	from Sales.SalesOrderHeader
	
-- @@

	select AVG(TotalDue) as Media, DATEPART (MONTH, OrderDate) as Mês
	from Sales.SalesOrderHeader
	group by DATEPART(MONTH, OrderDate)
	order by Mês
