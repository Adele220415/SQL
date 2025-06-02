USE AdventureWorks2022

-- Batch 1: Filter products by  maximum price
DECLARE @MaxPrice INT = 1500;
SELECT ProductID, Name, ListPrice, (ListPrice * 1.08 ) AS TaxedPrice 
FROM Production.Product
WHERE ListPrice <= @MaxPrice;
GO

-- Batch 2: Redefine variable and repeat query
DECLARE @MaxPrice INT = 2000;
SELECT ProductID, Name, ListPrice, (ListPrice * 1.08 ) AS TaxedPrice 
FROM Production.Product
WHERE ListPrice <= @MaxPrice;
GO