USE AdventureWorks2022;

-- 1)
-- -- Batch 1: High-value orders in 2019
-- DECLARE @MinTotalDue MONEY = 3000;
-- SELECT SalesOrderID, OrderDate, TotalDue
-- FROM Sales.SalesOrderHeader
-- WHERE TotalDue > @MinTotalDue AND OrderDate BETWEEN '2019-01-01' AND '2019-12-31';
-- GO
-- -- Batch 2: Include specific customer
-- DECLARE @MinTotalDue MONEY = 3000;
-- DECLARE @CustomerID INT = 11001;
-- SELECT SalesOrderID, OrderDate, TotalDue
-- FROM Sales.SalesOrderHeader
-- WHERE TotalDue > @MinTotalDue AND (OrderDate BETWEEN '2019-01-01' AND '2019-12-31' OR CustomerID = @CustomerID);
-- GO

-- 2)
-- SELECT ProductID, Name
-- FROM Production.Product
-- GROUP BY ProductID, Name
-- HAVING ProductID < 900
-- ORDER BY ProductID

-- SELECT Name FROM Production.Product
-- GROUP BY Name HAVING AVG(ListPrice) >300 AND SUM (ListPrice) >10;

SELECT ProductID, Name
FROM Production.Product
WHERE ProductSubcategoryID = 1
EXCEPT
SELECT ProductID, Name
FROM Production.Product
WHERE ProductSubcategoryID = 2;
