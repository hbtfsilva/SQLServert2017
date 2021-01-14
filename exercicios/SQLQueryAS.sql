-- Comando "AS"

SELECT TOP 10 AVG(ListPrice) AS "Preço medio"
FROM Production.Product

-- 1. Encontrar o FirstName e LastName
-- 2. ProductNumber da tabela production.product "Numero do produto"
-- 3. Sales.SalesOrderDetail unitPrice preço unitrário

SELECT TOP 10 FirstName AS "Nome", LastName AS "Sobrenome"
FROM Person.Person

SELECT TOP 10 ProductNumber AS "Numero do produto"
FROM Production.Product

SELECT unitPrice AS "Preco unitário"
FROM Sales.SalesOrderDetail