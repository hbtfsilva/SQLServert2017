-- fun��es:
-- fun��es de agrega��o basicamente agregam ou conbinam dados de uma tabela em um resultado s�.
-- MIN MAX SUM AVG

SELECT TOP 10 SUM(LineTotal) AS "Soma" -- Para adicionar um nome a coluna.
FROM Sales.SalesOrderDetail

SELECT TOP 10 *
FROM Sales.SalesOrderDetail

SELECT TOP 10 MIN(lineTotal) AS "Valores" -- Valor minimo
FROM Sales.SalesOrderDetail

SELECT TOP 10 MAX(lineTotal) AS "Valores" -- Valor m�ximo
FROM Sales.SalesOrderDetail

SELECT TOP 10 AVG(lineTotal) AS "Valores" -- Valor m�dia
FROM Sales.SalesOrderDetail 