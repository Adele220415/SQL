
--CREATE DATABASE LaptopShop
--GO

USE LaptopShop;
--CREATE TABLE Products(
--ProductID INT PRIMARY KEY ,
--ProductDescreption NVARCHAR(100),
--CostPrice DECIMAL(10, 2),
--SalesPrice DECIMAL (10, 2)
--);
--GO

--INSERT INTO Products
--VALUES (1, 'Oraimo Powerbank', 10000.00, 12000.00),
--(2, 'Hp Windows 11 Laptop', 105000.00, 120000.00),
--(3, 'Motorola spacebuds', 25000.00, 30000.00),
--(4, 'Macbook pro', 850000.00, 830000.00)
--GO

--SELECT SUM(SalesPrice - CostPrice) AS Profit, ProductID , ProductDescreption, CostPrice, SalesPrice
--FROM Products
--GROUP BY 
--    ProductID, 
--    ProductDescreption, 
--    CostPrice, 
--    SalesPrice;

SELECT 
    ProductID, 
    ProductDescreption, 
    CostPrice, 
    SalesPrice, 
    SUM(SalesPrice - CostPrice) AS Profit
FROM Products
GROUP BY 
    ProductID, 
    ProductDescreption, 
    CostPrice, 
    SalesPrice;


--DROP TABLE ProductSales