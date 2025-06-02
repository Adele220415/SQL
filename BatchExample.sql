USE AdventureWorks2022

-- -- Batch 1: Filter products by  maximum price
-- DECLARE @MinStock INT = 100;
-- SELECT ProductID, Name, SafetyStockLevel
-- FROM Production.Product
-- WHERE SafetyStockLevel > @MinStock;
-- GO

-- -- Batch 2: Redefine variable and repeat query
-- DECLARE @MinStock INT = 300;
-- SELECT ProductID, Name, SafetyStockLevel
-- FROM Production.Product
-- WHERE SafetyStockLevel > @MinStock;
-- GO

-- -- Batch 3: Add a variable: Color
-- DECLARE @MinStock INT = 300;
-- DECLARE @Color NVARCHAR = 'Black'
-- SELECT ProductID, Name, SafetyStockLevel, Color
-- FROM Production.Product
-- WHERE SafetyStockLevel > @MinStock AND Color = @Color;

-- GO
SELECT Color, SafetyStockLevel FROM Production.Product