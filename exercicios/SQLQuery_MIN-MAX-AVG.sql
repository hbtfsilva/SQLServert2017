-- funções:
-- funções de agregação basicamente agregam ou conbinam dados de uma tabela em um resultado só.
-- MIN MAX SUM AVG

SELECT TOP 10 SUM(LineTotal) AS "Soma" -- Para adicionar um nome a coluna.
FROM Sales.SalesOrderDetail

SELECT TOP 10 *
FROM Sales.SalesOrderDetail

SELECT TOP 10 MIN(lineTotal) AS "Valores" -- Valor minimo
FROM Sales.SalesOrderDetail

SELECT TOP 10 MAX(lineTotal) AS "Valores" -- Valor máximo
FROM Sales.SalesOrderDetail

SELECT TOP 10 AVG(lineTotal) AS "Valores" -- Valor média
FROM Sales.SalesOrderDetail 