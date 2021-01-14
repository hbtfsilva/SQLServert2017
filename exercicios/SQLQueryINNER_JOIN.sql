-- INNER JOIN 
-- Existem 3 tipos gerais de JOINS
-- INNER JOIN, OUTER JOIN E SELF-JOIN
-- BusineesEntityID, FirstName, LastName, EmailAddress

SELECT TOP 10 *
FROM Person.Person

SELECT p.BusinessEntityID, p.FirstName, p.LastName, pe.EmailAddress
FROM Person.Person AS P
INNER JOIN Person.EmailAddress PE ON p.BusinessEntityID = pe.BusinessEntityID

-- Selecionar os nomes dos produtos e suas subcategorias
-- ListPrice, Nome do produto e sua subcategoria

SELECT TOP 10 *
FROM Production.Product

SELECT pr.ListPrice, pr.Name, pc.Name
FROM Production.Product Pr
INNER JOIN Production.ProductSubcategory PC ON PC.ProductSubcategoryID = pr.ProductSubcategoryID

SELECT TOP 10 *
FROM Person.BusinessEntityAddress

SELECT TOP 10 *
FROM Person.BusinessEntityAddress BA
INNER JOIN Person.Address PA ON PA.AddressID = BA.AddressID

-- DESAFIOS

SELECT TOP 10 *
FROM Person.PhoneNumberType

SELECT TOP 10 *
FROM Person.PersonPhone

-- BusinessEntityID, Name, PhoneNumberTypeID, PhoneNumber

SELECT pp.BusinessEntityID, pt.Name, pt.PhoneNumberTypeID, pp.PhoneNumber
FROM Person.PersonPhone PP
INNER JOIN Person.PhoneNumberType PT ON PT.PhoneNumberTypeID = PP.PhoneNumberTypeID

-- AddressID, City, StateProvinceID, Nome do Estado

SELECT TOP 10 *
FROM Person.StateProvince

SELECT TOP 10 *
FROM Person.Address

SELECT TOP 10 pa.AddressID, pa.City, ps.StateProvinceID, ps.Name
FROM Person.Address PA
INNER JOIN Person.StateProvince PS ON PS.StateProvinceID = PA.StateProvinceID