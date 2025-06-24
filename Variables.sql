--USE AdventureWorks2022
--DECLARE @EmployeeCount INT;
--SET @EmployeeCount = (SELECT COUNT (*) FROM HumanResources.Employee);
--SET @EmployeeCount = 20000
--SELECT @EmployeeCount AS TotalEmployee
--GO

--DECLARE @NIN INT;
--SET @NIN 295847284;
--SELECT * FROM HumanResources.Employee
--WHERE NationalIDNumber = @NIN
--GO

--SELECT SalesOrderID, TotalDue*1.15 AS TotalWithTax
--FROM Sales.SalesOrderHeader

--SELECT
-- @@SERVERNAME AS ServerName,
-- @@LANGUAGE AS MyLanguage,
-- @@MAX_CONNECTIONS AS MaxConnections,
-- @@DATEFIRST AS Today,
-- GO

--SELECT 
--YEAR(OrderDate)*1000 + 
--MONTH(OrderDate) * 100 + 
--DAY(OrderDate)
--AS CustomerDateCode
--FROM Sales.SalesOrderHeader;

CREATE DATABASE LaptopShop
GO

USE LatopShop;
CREATE TABLE ProductSales(
ProductID INT PRIMARY KEY ,
ProductDescreption NVARCHAR(100),
CostPrice DECIMAL(10, 2),
SalesPrice DECIMAL (10, 2)
);