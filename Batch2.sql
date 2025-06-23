use AdventureWorks2022
--SELECT BusinessEntityID, SalesYTD, ROW_NUMBER() 
--OVER (ORDER BY SalesYTD DESC) AS SalesRank
--FROM Sales.SalesPerson;

--SELECT SalesOrderID, OrderDate, CONVERT(varchar, OrderDate, 107) AS FormedDate
--FROM Sales.SalesOrderHeader

SELECT SUM(SalesOrderID) AS TotalSales, AVG(SubTotal) AS AvrgOrderValue
FROM Sales.SalesOrderHeader
--WHERE OrderDate BETWEEN '2011-08-02' AND '2011-08-04';
GO
