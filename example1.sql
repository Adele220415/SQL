USE AdventureWorks2022;
-- EXAMPLE 1
-- -- Batch 1

-- DECLARE @MinPrice DECIMAL(10, 2) = 500.00;
-- -- DECLARE @COLOR NVARCHAR(15) = 'Black';
-- SELECT ProductID, Name, ListPrice, (ListPrice*1.10)AS
-- IncreasedPrice FROM Production.Product
-- WHERE ListedPrice > @MinPrice;
-- GO

-- -- Batch 2

-- SET @MinPrice = 1000.00 ;
-- SELECT ProductID, Name, ListPrice, (ListPrice*1.10)AS
-- IncreasedPrice 
-- FROM Production.Product
-- WHERE ListedPrice>@MinPrice;
-- EXAMPLE 1a
-- DECLARE @MinPrice DECIMAL(10,2) = 500.00;
-- /* Query products with price above the threshold
-- and calculate a 10% price increase */
-- SELECT ProductID, Name, ListPrice, (ListPrice * 1.10) AS IncreasedPrice
-- FROM Production.Product
-- WHERE ListPrice > @MinPrice;
-- GO

-- -- Batch 2: Update price and repeat query
-- SET @MinPrice = 1000.00; -- Error: @MinPrice is out of scope
-- SELECT ProductID, Name, ListPrice, (ListPrice * 1.10) AS IncreasedPrice
-- FROM Production.Product
-- WHERE ListPrice > @MinPrice;

-- EXAMPLE 2
-- Batch 1: Filter products by stock level
-- DECLARE @StockLevel INT = 200;
-- SELECT ProductID, Name, SafetyStockLevel
-- FROM Production.Product
-- WHERE SafetyStockLevel >= @StockLevel;
-- GO

-- -- Batch 2: Redefine variable and repeat query
-- DECLARE @StockLevel INT = 400;
-- SELECT ProductID, Name, SafetyStockLevel
-- FROM Production.Product
-- WHERE SafetyStockLevel >= @StockLevel;
-- GO

-- EXAMPLE 3
-- Batch 1: Filter by price and color
-- DECLARE @MaxPrice DECIMAL(10,2) = 1000.00;
-- DECLARE @Color NVARCHAR(15) = 'Black';
-- /* Calculate discounted price for high-value black products */
-- SELECT ProductID, Name, ListPrice, (ListPrice * 0.90) AS DiscountedPrice, (ListPrice * 0.10) AS DiscountPrice
-- FROM Production.Product
-- WHERE ListPrice <= @MaxPrice AND Color = @Color;
-- GO
-- -- Batch 2: Change color and repeat
-- DECLARE @MaxPrice DECIMAL(10,2) = 1000.00;
-- DECLARE @Color NVARCHAR(15) = 'Red';
-- /* Same query with different color filter */
-- SELECT ProductID, Name, ListPrice, (ListPrice * 0.90) AS DiscountedPrice
-- FROM Production.Product
-- WHERE ListPrice <= @MaxPrice AND Color = @Color;
-- GO

-- EXAMPLE 4 UNION ALL
-- Batch 1: Combine red products
-- DECLARE @Color1 NVARCHAR(15) = 'Red';
-- SELECT ProductID, Name, Color
-- FROM Production.Product
-- WHERE Color = @Color1;
-- GO
-- -- Batch 2: Combine with blue products using UNION ALL
-- DECLARE @Color2 NVARCHAR(15) = 'Blue';
-- DECLARE @Color1 NVARCHAR(15) = 'Red';
-- SELECT ProductID, Name, Color
-- FROM Production.Product
-- WHERE Color = @Color1
-- UNION ALL
-- SELECT ProductID, Name, Color
-- FROM Production.Product
-- WHERE Color = @Color2;
-- GO

-- EXAMPLE 5 INTERSECT

-- Find products that are both expensive and in a specific subcategory
SELECT ProductID, Name
FROM Production.Product
WHERE ListPrice > 1000
INTERSECT
SELECT ProductID, Name
FROM Production.Product
WHERE ProductSubcategoryID = 1;