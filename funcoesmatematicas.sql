
	-- # Fun��es matem�ticas SQL SERVER
		select UnitPrice + LineTotal      -- pode ser adicionado qualquer operador, como: +, -, * ou /.
		from Sales.SalesOrderDetail

	-- # AVG - m�dia
		select AVG (LineTotal)
		from Sales.SalesOrderDetail
		
	-- # SUM
	-- # MIN
	-- # MAX
	-- # ROUND
		select ROUND (LineTotal, 2)
		from Sales.SalesOrderDetail