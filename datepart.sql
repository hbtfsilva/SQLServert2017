
-- SQL datepart

	select SalesOrderID, DATEPART (MONTH, orderdate) as Mes
	from Sales.SalesOrderHeader
	
-- @@

	select AVG(TotalDue) as Media, DATEPART (MONTH, OrderDate) as M�s
	from Sales.SalesOrderHeader
	group by DATEPART(MONTH, OrderDate)
	order by M�s
