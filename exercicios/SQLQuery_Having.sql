-- HAVING
/* Diferen�a: 
GROUP BY � aplicado depois que os dados s�o agrupados. 
WHERE � aplicado antes que os dados s�o agrupados. */

-- Qtd. de nomes do sistema que tem ocorr�ncia maior que 10?
SELECT FirstName, COUNT(Firstname)
FROM Person.Person
GROUP BY FirstName
HAVING count(Firstname) > 10

-- Quais produtos est�o entre 162k e 500k?
SELECT TOP 10 *
FROM Sales.SalesOrderDetail

SELECT ProductID, SUM(Linetotal) AS "Total"
FROM Sales.SalesOrderDetail
GROUP BY ProductID
HAVING SUM(Linetotal) BETWEEN 162000 AND 500000

-- Qtd. de nomes do sistema que tem ocorr�ncia maior que 10, por�m com titulo de Mr.?
SELECT FirstName, COUNT(Firstname)
FROM Person.Person
WHERE title = 'Mr.'
GROUP BY FirstName
HAVING count(Firstname) > 10

-- Quais provincias tem o maior n�mero de cadastros no nosso sistema e que est�o acima de 1000?
SELECT StateProvinceID, COUNT(StateProvinceID)
FROM Person.Address
GROUP BY StateProvinceID
HAVING COUNT(StateProvinceID) > 1000

-- Quais produtos n�o est�o trazendo em m�dia no minimo 1kk de vendas?
SELECT ProductID, AVG(linetotal) AS "Total"
FROM Sales.SalesOrderDetail
GROUP BY ProductID
HAVING AVG(lineTotal) < 10000



