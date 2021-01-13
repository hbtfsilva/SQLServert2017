-- GROUP BY
-- Divide o resultado da pesquisa em grupo.

SELECT *
FROM Sales.SalesOrderDetail

SELECT SpecialOfferID, SUM(UnitPrice) AS "Soma"
FROM Sales.SalesOrderDetail
GROUP BY SpecialOfferID

SELECT SpecialOfferID,UnitPrice
FROM Sales.SalesOrderDetail
WHERE SpecialOfferID = 9

-- Quantidade de produtos vendidos por grupo?
SELECT ProductID, COUNT(ProductID) AS "Contagem" 
FROM Sales.SalesOrderDetail
GROUP BY ProductID

-- Qtd. de nomes por nomes temos cadastrados?
SELECT *
FROM Person.Person

SELECT FirstName, COUNT(Firstname) AS "Contagem"
FROM Person.Person
GROUP BY FirstName

-- Qual a média de preço para os produtos por cor Prata (Silver)?
SELECT *
FROM Production.Product

SELECT color, AVG(ListPrice) AS "Preço"
FROM Production.Product
WHERE Color = 'Silver'
GROUP BY Color

-- DESAFIOS:
SELECT *
FROM Person.Person

SELECT Middlename, COUNT(FirstName) AS "Soma"
FROM Person.Person
GROUP BY MiddleName

