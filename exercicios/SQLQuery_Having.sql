-- HAVING
/* Diferença: 
GROUP BY é aplicado depois que os dados são agrupados. 
WHERE é aplicado antes que os dados são agrupados. */

-- Qtd. de nomes do sistema que tem ocorrência maior que 10?
SELECT FirstName, COUNT(Firstname)
FROM Person.Person
GROUP BY FirstName
HAVING count(Firstname) > 10

-- Quais produtos estão entre 162k e 500k?
SELECT TOP 10 *
FROM Sales.SalesOrderDetail

SELECT ProductID, SUM(Linetotal) AS "Total"
FROM Sales.SalesOrderDetail
GROUP BY ProductID
HAVING SUM(Linetotal) BETWEEN 162000 AND 500000

-- Qtd. de nomes do sistema que tem ocorrência maior que 10, porém com titulo de Mr.?
SELECT FirstName, COUNT(Firstname)
FROM Person.Person
WHERE title = 'Mr.'
GROUP BY FirstName
HAVING count(Firstname) > 10

-- Quais provincias tem o maior número de cadastros no nosso sistema e que estão acima de 1000?
SELECT StateProvinceID, COUNT(StateProvinceID)
FROM Person.Address
GROUP BY StateProvinceID
HAVING COUNT(StateProvinceID) > 1000

-- Quais produtos não estão trazendo em média no minimo 1kk de vendas?
SELECT ProductID, AVG(linetotal) AS "Total"
FROM Sales.SalesOrderDetail
GROUP BY ProductID
HAVING AVG(lineTotal) < 10000



