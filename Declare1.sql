USE AdventureWorks2022
SELECT Name FROM Sales.SalesTerritory;
GO
SELECT Description FROM Production.ProductDescription;
GO
SELECT ProductID, Name, ProductNumber FROM Production.Product;
GO
SELECT Bonus, CommissionPct, SalesLastYear FROM Sales.SalesPerson
WHERE TerritoryID BETWEEN 1 AND 3;
GO