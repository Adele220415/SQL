USE AdventureWorks2022

-- DECLARE @MinPrice DECIMAL(10, 2) = 1000.00;
-- SELECT ProductID, Name, ListPrice
-- FROM Production.Product
-- WHERE ListPrice > @MinPrice;

-- SELECT Name, SellStartDate
-- FROM Production.Product
-- WHERE SellStartDate BETWEEN '2008-04-30'
-- AND '2008-05-01';

-- SELECT * FROM Production.Product


-- SELECT Name, Weight
-- FROM Production.Product
-- WHERE Weight BETWEEN 400.00
-- AND 500.00;

-- SELECT Name, Weight, Color FROM Production.Product WHERE Color LIKE ('Bl%');
-- SELECT Name, Weight, Color FROM Production.Product WHERE Color IN ('Black');
-- SELECT Name, Weight, Color FROM Production.Product WHERE Weight IS NULL;

-- SELECT * FROM Sales.Customer
-- WHERE EXISTS(SELECT 1 FROM)