-- GROUP BY
-- Divide o resultado da sua pesquisa em grupos
	-- calcular a soma de itens
	-- contar o n�mero de itens naquele grupo

SELECT * 
FROM Sales.SalesOrderDetail

SELECT SpecialOfferID, SUM(UnitPrice) AS "Soma" -- Agrupado
FROM Sales.SalesOrderDetail
GROUP BY SpecialOfferID

SELECT SpecialOfferID,UnitPrice -- Manual
FROM Sales.SalesOrderDetail
WHERE SpecialOfferID = 9

-- Quanto de cada produto foi vendido at� hoje?
SELECT * FROM Sales.SalesOrderDetail

SELECT ProductID, COUNT(ProductID) AS "Contagem"
FROM Sales.SalesOrderDetail
GROUP BY ProductID

-- Quantos nomes de cada nome temos cadastrados no nosso banco?
SELECT FirstName, COUNT(FirstName) AS "Contagem"
FROM Person.Person
GROUP BY FirstName

-- Qual a media de pre�o para os produtos pratas
SELECT Color, AVG(ListPrice) AS "Pre�o"
FROM Production.Product
WHERE color = 'Silver' -- uma cor especifica
GROUP BY color -- todas as cores

-- EXERC�CIOS

-- 1. Quantas pessoas tem o mesmo nome pelo "middlename"
SELECT MiddleName, COUNT(FirstName) AS "Quantidade"
FROM Person.person
GROUP BY MiddleName

-- 2. M�dia que cada produto � vendido na loja
SELECT ProductID, AVG(OrderQty) AS "Media"
FROM Sales.SalesOrderDetail
GROUP BY ProductID

-- 3. Quais foram as 10 vendas que no total tiveram os maiores valores por produto do maior para o menor
SELECT TOP 10 ProductID, SUM(linetotal)
FROM Sales.SalesOrderDetail
GROUP BY ProductId
ORDER BY SUM(lineTotal) DESC;

-- 4. Quantos produtos e qual a quantidade media de produtos temos cadastrados nas nossas ordens de servi�o (workorder)
SELECT ProductID, COUNT(ProductID) AS "Contagem"
AVG(orderQty) AS "Media"
FROM Production.workOrder
GROUP BY ProductID
















